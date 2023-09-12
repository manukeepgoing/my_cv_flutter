import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'course.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key, required this.course});
  final Course course;

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
                ListTile(
                  title: Text('By: ${course.teacher}'),
                  trailing: Text(course.platform),
                ),
                Divider(color: course.color),
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
      title: Text('${course.title} - ${course.duration}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      leading: Image.asset(course.image),
      subtitle: Text(course.subtitle),
    );
  }

  Widget _cardDescription() {
    return Expanded(
      child: ListView.builder(
        itemCount: course.description.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('\u2022 ${course.description[index]}'),
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
          color: course.inProgress ? Colors.grey : course.color,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
        ),
        padding: const EdgeInsets.all(3.0),
        child: course.inProgress
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
                  if (await canLaunchUrl(Uri.parse(course.certificateUrl))) {
                    launchUrl(Uri.parse(course.certificateUrl));
                  } else {
                    scaffoldManager.showSnackBar(
                      const SnackBar(
                        content: Text('Could not launch url'),
                      ),
                    );
                  }
                },
                icon: Icon(Icons.file_present,
                    color: _isBlackColor(course.color)
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
