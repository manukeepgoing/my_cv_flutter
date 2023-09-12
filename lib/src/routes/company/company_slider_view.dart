import 'package:flutter/material.dart';
import 'package:my_cv_flutter/src/routes/company/company.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/rounded_slide.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/rounded_slider_list.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/slider_position_enum.dart';
import 'company_view.dart';

class CompanySliderView extends StatelessWidget {
  const CompanySliderView({super.key});

  static const routeName = '/company-slider-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiencia'),
      ),
      body: RoundedSlider(
        slides: fromCompaniesToSlideList(),
      ),
    );
  }

  List<RoundedSlide> fromCompaniesToSlideList() {
    List<RoundedSlide> returnList = [];

    for (var company in companyList) {
      SliderPosition position;
      if (company == companyList.first) {
        position = SliderPosition.first;
      } else if (company == companyList.last) {
        position = SliderPosition.last;
      } else {
        position = SliderPosition.middle;
      }

      returnList.add(RoundedSlide(
        sliderPosition: position,
        mainColor: company.companyMainColor,
        imageUrl: company.logo,
        title: company.name,
        subtitle: company.jobTitle,
        startDate: company.dateOfEmployment,
        endDate: company.dateOfDisemployment,
        routeName: CompanyView.routeName,
        arguments: company,
      ));
    }

    return returnList;
  }
}
