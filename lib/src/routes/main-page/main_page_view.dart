import 'package:flutter/material.dart';
import 'package:my_cv_flutter/src/routes/main-page/header.dart';
import 'package:my_cv_flutter/src/routes/main-page/languages/languages_graph.dart';

import 'about_me.dart';
import 'grid/grid_list.dart';

/// Displays a list of SampleItems.
class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  static const routeName = '/';

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _stopOnTopScrolling() {
    if (_controller.position.pixels <= 0) {
      _controller.position.setPixels(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 0,
      ),
      body: NotificationListener<ScrollUpdateNotification>(
        onNotification: (_) {
          _stopOnTopScrolling();
          return false;
        },
        child: ListView(
          controller: _controller,
          children: const [
            Header(), // could be sliver app bar
            SizedBox(height: 20),
            AboutMe(),
            SizedBox(height: 10),
            MainPageCardList(),
            SizedBox(height: 20),
            LanguagesGraph(),
            SizedBox(height: 20),
            // TODO SkillList()
          ],
        ),
      ),
    );
  }
}
