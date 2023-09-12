import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:my_cv_flutter/src/routes/main-page/languages/language.dart';

class LanguagesGraph extends StatelessWidget {
  const LanguagesGraph({super.key});

  @override
  Widget build(BuildContext context) {
    // show abilities, languages and interest about myself

    return Column(
      children: fromLanguagesToWidgets(),
    );
  }

  List<Widget> fromLanguagesToWidgets() {
    return languages.map((language) {
      return ListTile(
        leading: Image.asset(language.flag, width: 30, height: 30),
        title: Text(language.name),
        subtitle: Text(language.certificate),
        trailing: RatingStars(value: language.puntuation),
      );
    }).toList();
  }
}
