import 'package:flutter/material.dart';
import 'package:my_cv_flutter/src/widgets/rounded-slider/rounded_slide.dart';

class RoundedSlider extends StatefulWidget {
  const RoundedSlider({super.key, required this.slides});

  final List<RoundedSlide> slides;

  @override
  State<RoundedSlider> createState() => _RoundedSliderState();
}

class _RoundedSliderState extends State<RoundedSlider> {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              _currentPage = value;
            });
          },
          children: widget.slides,
        ),
        _sliderCircleIndicators(),
      ],
    );
  }

  Widget _sliderCircleIndicators() {
    return Positioned(
      bottom: 60,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < widget.slides.length; i++)
            _sliderCircleIndicator(i == _currentPage, i)
        ],
      ),
    );
  }

  Widget _sliderCircleIndicator(bool isActive, int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? widget.slides[index].mainColor : Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
