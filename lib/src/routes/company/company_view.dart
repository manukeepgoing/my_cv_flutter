import 'package:flutter/material.dart';
import 'package:my_cv_flutter/src/widgets/description_widget/description_view.dart';
import 'company.dart';

class CompanyView extends StatelessWidget {
  const CompanyView({super.key, required this.company});
  final Company company;

  static const routeName = '/company-view';

  @override
  Widget build(BuildContext context) {
    return DescriptionWidget(
      title: company.name,
      imageUrl: company.logo,
      mainColor: company.companyMainColor,
      shortDescription: company.description,
      country: company.country,
      city: company.city,
      descriptionList: company.jobDescription,
      startDate: company.dateOfEmployment,
      endDate: company.dateOfDisemployment,
      iconListTitle: 'Languages',
      iconList: company.languagesUsed,
      linkedin: company.linkedin,
      website: company.website,
    );
  }
}
