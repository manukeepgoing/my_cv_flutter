import 'package:my_cv_flutter/src/routes/company/company_slider_view.dart';
import 'package:my_cv_flutter/src/routes/courses/course_list_view.dart';
import 'package:my_cv_flutter/src/routes/projects/project_list_view.dart';
import 'package:my_cv_flutter/src/routes/studies/studies_slider_view.dart';

class GridItem {
  const GridItem(this.name, this.imageUrl, this.url);
  final String name;
  final String imageUrl;
  final String url;
}

final gridItems = [
  const GridItem("Estudios", "assets/images/main_page/study.jpg",
      StudiesSliderView.routeName),
  const GridItem("Experiencia", "assets/images/main_page/computer.jpg",
      CompanySliderView.routeName),
  const GridItem("Cursos", "assets/images/main_page/light_buble.jpg",
      CourseListView.routeName),
  const GridItem("Proyectos", "assets/images/main_page/handshake.jpg",
      ProjectListview.routeName),
];
