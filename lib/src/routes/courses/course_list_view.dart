import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:my_cv_flutter/src/routes/courses/course.dart';
import 'package:my_cv_flutter/src/routes/courses/course_card.dart';

class CourseListView extends StatelessWidget {
  const CourseListView({super.key});

  static const routeName = '/courses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cursos'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 70),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return CourseCard(course: courseList[index]);
          },
          layout: SwiperLayout.STACK,
          axisDirection: AxisDirection.right,
          loop: false,
          itemHeight: 600,
          itemWidth: 340,
          itemCount: courseList.length,
        ),
      ),
    );
  }
}
