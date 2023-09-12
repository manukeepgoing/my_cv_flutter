import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;

import 'package:flutter/services.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/painters/first_cv_element_painter.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/painters/last_cv_element_painter.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/painters/middle_cv_element_painter.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/slider_position_enum.dart';

class RoundedSlide extends StatefulWidget {
  const RoundedSlide({
    super.key,
    required this.sliderPosition,
    required this.mainColor,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    this.startDate,
    this.endDate,
    required this.routeName,
    required this.arguments,
  });
  final SliderPosition sliderPosition;
  final Color mainColor;
  final String imageUrl;
  final String title;
  final String subtitle;
  final String? startDate;
  final String? endDate;
  final String routeName;
  final Object? arguments;

  @override
  State<RoundedSlide> createState() => _RoundedSlideState();
}

class _RoundedSlideState extends State<RoundedSlide>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);

    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceIn)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ui.Image>(
      future: _loadImage(widget.imageUrl),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return InkWell(
            onTap: () {
              Future.delayed(const Duration(milliseconds: 400), () {
                Navigator.pushNamed(context, widget.routeName,
                    arguments: widget.arguments);
              });
            },
            child: CustomPaint(
              painter: _getPainterForPosition(widget.sliderPosition,
                  snapshot.data!, _animation.value, widget.mainColor),
              child: Stack(
                children: [
                  _titleWidget(widget.title, widget.subtitle),
                  if (widget.sliderPosition != SliderPosition.last)
                    _startDateWidget(widget.startDate),
                  if (widget.sliderPosition != SliderPosition.first)
                    _endDateWidget(widget.endDate),
                  _imageForHero(widget.title, widget.imageUrl),
                  _clickMeWidget(),
                ],
              ),
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  Widget _titleWidget(String title, String subtitle) {
    return Positioned(
      top: 50,
      right: 0,
      left: 0,
      child: Center(
        child: Column(
          children: [
            Hero(
              transitionOnUserGestures: true,
              tag: '${title}_tag',
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageForHero(String title, String imageUrl) {
    return Positioned(
      top: 180,
      right: 0,
      left: 0,
      child: Opacity(
        opacity: 0,
        child: Center(
          child: Hero(
            tag: '${title}_logo_tag',
            child: Image.asset(
              imageUrl,
              height: 0,
              width: 0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _clickMeWidget() {
    return Positioned(
      top: 470,
      right: 0,
      left: 0,
      child: Center(
        child: Opacity(
          opacity: math.max(.2, (1 - _animation.value)),
          child: const Text(
            'Click me to see more',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _startDateWidget(String? startDate) {
    return Positioned(
      top: 250,
      right: 10,
      child: Center(
        child: Text(
          startDate ?? '',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _endDateWidget(String? endDate) {
    return Positioned(
      top: 250,
      left: 10,
      child: Center(
        child: Text(
          endDate ?? '',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  CustomPainter _getPainterForPosition(SliderPosition sliderPosition,
      ui.Image image, double animationValue, Color companyColor) {
    switch (sliderPosition) {
      case SliderPosition.first:
        return FirstCVElementPainter(image, animationValue, companyColor);
      case SliderPosition.middle:
        return MiddleCVElementPainter(image, animationValue, companyColor);
      case SliderPosition.last:
        return LastCVElementPainter(image, animationValue, companyColor);
    }
  }

  Future<ui.Image> _loadImage(String imageAssetPath) async {
    final ByteData data = await rootBundle.load(imageAssetPath);
    final codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
      targetHeight: 170,
      targetWidth: 170,
    );
    var frame = await codec.getNextFrame();
    return frame.image;
  }
}
