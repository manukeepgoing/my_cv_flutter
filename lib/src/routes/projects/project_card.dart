import 'package:flutter/material.dart';
import 'package:my_cv_flutter/src/routes/projects/projects.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _cardTitle(),
                const Divider(),
                _cardDescription(),
              ],
            ),
          ),
          _certificateButton(context),
        ],
      ),
    );
  }

  Widget _cardTitle() {
    return ListTile(
      title: Text(project.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      leading:
          Image.asset(project.icon ?? 'assets/images/projects/default.png'),
    );
  }

  Widget _cardDescription() {
    return Expanded(
      child: ListView.builder(
        itemCount: project.description.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('\u2022 ${project.description[index]}'),
          );
        },
      ),
    );
  }

  Widget _certificateButton(BuildContext context) {
    var scaffoldManager = ScaffoldMessenger.of(context);
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: project.inProgress ? Colors.grey : project.color,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
        ),
        padding: const EdgeInsets.all(3.0),
        child: project.inProgress || project.url == null
            ? IconButton(
                onPressed: () {
                  scaffoldManager.showSnackBar(
                    const SnackBar(
                      content: Text('Currently in progress'),
                    ),
                  );
                },
                icon: const Icon(Icons.book_outlined,
                    color: Colors.black, size: 30),
              )
            : IconButton(
                onPressed: () async {
                  if (await canLaunchUrl(Uri.parse(project.url!))) {
                    launchUrl(Uri.parse(project.url!));
                  } else {
                    scaffoldManager.showSnackBar(
                      const SnackBar(
                        content: Text('Could not launch url'),
                      ),
                    );
                  }
                },
                icon: Icon(Icons.file_present,
                    color: _isBlackColor(project.color)
                        ? Colors.white
                        : Colors.black,
                    size: 30),
              ),
      ),
    );
  }

  bool _isBlackColor(Color color) {
    return color.computeLuminance() < 0.5;
  }
}
