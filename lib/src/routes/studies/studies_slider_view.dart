import 'package:flutter/material.dart';
import 'package:my_cv_flutter/src/routes/studies/study.dart';
import 'package:my_cv_flutter/src/routes/studies/study_view.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/rounded_slide.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/rounded_slider_list.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/slider_position_enum.dart';

class StudiesSliderView extends StatelessWidget {
  const StudiesSliderView({super.key});

  static const routeName = '/studies-slider-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Estudios"),
        ),
        body: RoundedSlider(slides: fromStudiesToSlideList()));
  }

  List<RoundedSlide> fromStudiesToSlideList() {
    List<RoundedSlide> returnList = [];

    for (var study in studyList) {
      SliderPosition position;
      if (study == studyList.first) {
        position = SliderPosition.first;
      } else if (study == studyList.last) {
        position = SliderPosition.last;
      } else {
        position = SliderPosition.middle;
      }

      returnList.add(RoundedSlide(
        sliderPosition: position,
        mainColor: study.studyMainColor,
        imageUrl: study.logo,
        title: study.name,
        subtitle: study.studyTitle,
        startDate: study.startDate,
        endDate: study.endDate,
        routeName: StudyView.routeName,
        arguments: study,
      ));
    }

    return returnList;
  }
}
