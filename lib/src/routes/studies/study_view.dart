import 'package:flutter/material.dart';
import 'package:my_cv_flutter/src/routes/studies/study.dart';
import 'package:my_cv_flutter/src/widgets/description_widget/description_view.dart';

class StudyView extends StatelessWidget {
  const StudyView({super.key, required this.study});

  final Study study;

  static const routeName = '/study-view';

  @override
  Widget build(BuildContext context) {
    return DescriptionWidget(
      title: study.name,
      imageUrl: study.logo,
      mainColor: study.studyMainColor,
      shortDescription: study.description,
      country: study.country,
      city: study.city,
      descriptionList: study.studyDescription,
      startDate: study.startDate,
      endDate: study.endDate,
      linkedin: study.linkedin,
      website: study.website,
    );
  }
}
