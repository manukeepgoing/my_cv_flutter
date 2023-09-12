import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:my_cv_flutter/src/routes/projects/project_card.dart';
import 'package:my_cv_flutter/src/routes/projects/projects.dart';

class ProjectListview extends StatelessWidget {
  const ProjectListview({super.key});

  static const routeName = '/projects';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyectos'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 70),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return ProjectCard(
              project: projectList[index],
            );
          },
          layout: SwiperLayout.STACK,
          axisDirection: AxisDirection.right,
          loop: false,
          itemHeight: 600,
          itemWidth: 340,
          itemCount: projectList.length,
        ),
      ),
    );
  }
}
