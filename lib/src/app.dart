import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_cv_flutter/src/routes/company/company.dart';
import 'package:my_cv_flutter/src/routes/company/company_slider_view.dart';
import 'package:my_cv_flutter/src/routes/company/company_view.dart';
import 'package:my_cv_flutter/src/routes/courses/course_list_view.dart';
import 'package:my_cv_flutter/src/routes/main-page/main_page_view.dart';
import 'package:my_cv_flutter/src/routes/projects/project_list_view.dart';
import 'package:my_cv_flutter/src/routes/studies/studies_slider_view.dart';
import 'package:my_cv_flutter/src/routes/studies/study.dart';
import 'package:my_cv_flutter/src/routes/studies/study_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Restore navigation after kill app
      restorationScopeId: 'my_cv_flutters',

      // translations
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],

      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,

      theme: ThemeData(useMaterial3: true),

      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case StudiesSliderView.routeName:
                return const StudiesSliderView();
              case CompanySliderView.routeName:
                return const CompanySliderView();
              case CourseListView.routeName:
                return const CourseListView();
              case ProjectListview.routeName:
                return const ProjectListview();
              case CompanyView.routeName:
                final company = routeSettings.arguments as Company;
                return CompanyView(
                  company: company,
                );
              case StudyView.routeName:
                final study = routeSettings.arguments as Study;
                return StudyView(
                  study: study,
                );
              case MainPageView.routeName:
              default:
                return const MainPageView();
            }
          },
        );
      },
    );
  }
}
