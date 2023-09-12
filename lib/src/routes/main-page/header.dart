import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        // decoration with gradient
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blue.shade100,
            ],
            begin: Alignment.center,
            end: Alignment.bottomCenter,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(0, 1),
            ),
          ],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // my avatar
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),

                // my name
                Column(
                  children: [
                    Text(
                      'Manuel',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // my lastname
                    Text(
                      'Hernández-Ros',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            _buildSocialMediaLinks(context),
          ],
        ));
  }

  // row of social media buttons
  _buildSocialMediaLinks(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.linkedin),
          onPressed: () async {
            var scaffoldManager = ScaffoldMessenger.of(context);
            if (await canLaunchUrl(
                Uri.parse('https://www.linkedin.com/in/manuelhernandezros/'))) {
              launchUrl(
                  Uri.parse('https://www.linkedin.com/in/manuelhernandezros/'));
            } else {
              scaffoldManager.showSnackBar(
                const SnackBar(
                  content: Text('No se puede abrir'),
                ),
              );
            }
          },
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.github),
          onPressed: () async {
            var scaffoldManager = ScaffoldMessenger.of(context);
            if (await canLaunchUrl(
                Uri.parse('https://github.com/manukeepgoing'))) {
              launchUrl(Uri.parse('https://github.com/manukeepgoing'));
            } else {
              scaffoldManager.showSnackBar(
                const SnackBar(
                  content: Text('No se puede abrir'),
                ),
              );
            }
          },
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.phone),
          onPressed: () async {
            var scaffoldManager = ScaffoldMessenger.of(context);
            if (await canLaunchUrl(Uri.parse('tel:+34682297142'))) {
              launchUrl(Uri.parse('tel:+34682297142'));
            } else {
              scaffoldManager.showSnackBar(
                const SnackBar(
                  content: Text('No se puede llamar'),
                ),
              );
            }
          },
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.envelope),
          onPressed: () async {
            var scaffoldManager = ScaffoldMessenger.of(context);
            if (await canLaunchUrl(
                Uri.parse('mailto:manuelhernandezros@gmail.com'))) {
              launchUrl(Uri.parse('mailto:manuelhernandezros@gmail.com'));
            } else {
              scaffoldManager.showSnackBar(
                const SnackBar(
                  content: Text('No se puede enviar correo'),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
