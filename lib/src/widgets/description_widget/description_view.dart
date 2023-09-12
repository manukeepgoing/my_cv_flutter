import 'package:flutter/material.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';
import 'dart:math' as math;

import 'package:url_launcher/url_launcher.dart';

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({
    super.key,
    this.website,
    this.linkedin,
    required this.mainColor,
    required this.imageUrl,
    required this.title,
    this.iconList,
    this.iconListTitle,
    this.startDate,
    this.endDate,
    this.descriptionList,
    this.city,
    this.country,
    this.shortDescription,
  });

  final String title;
  final String imageUrl;
  final Color mainColor;
  final String? shortDescription;
  final String? country;
  final String? city;
  final List<String>? descriptionList;
  final String? startDate;
  final String? endDate;
  final String? iconListTitle;
  final List<String>? iconList;
  final String? linkedin;
  final String? website;

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget>
    with SingleTickerProviderStateMixin {
  // TODO: change animation duration depending on nummber of items shown
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: const Duration(seconds: 6), vsync: this);

    _animation = Tween(begin: .0, end: 6.0).animate(_controller)
      ..addListener(() {
        setState(() {});
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
    return Scaffold(
      appBar: AppBar(
        actions: [
          Hero(
            tag: '${widget.title}_logo_tag',
            child: Image.asset(
              widget.imageUrl,
              height: 80,
              width: 80,
            ),
          ),
        ],
        title: Hero(
          transitionOnUserGestures: true,
          tag: '${widget.title}_tag',
          child: Text(
            widget.title,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ..._shortDescription(),
              _location(),
              ..._descriptionList(),
              ..._iconsList(),
              ..._linksWidget(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _shortDescription() {
    if (widget.shortDescription == null) {
      return [];
    }

    return [
      Opacity(
        opacity: _calculateOpacityForSecond(second: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.shortDescription!,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 20),
    ];
  }

  Widget _location() {
    // check null
    if (widget.country == null || widget.city == null) {
      return const SizedBox(height: 0, width: 0);
    }

    return Opacity(
      opacity: _calculateOpacityForSecond(second: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${widget.country}, ${widget.city}',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _descriptionList() {
    // check null
    if (widget.descriptionList == null) {
      return [];
    }

    return [
      Opacity(
        opacity: _calculateOpacityForSecond(second: 1),
        child: Divider(
          color: widget.mainColor,
        ),
      ),
      Opacity(
        opacity: _calculateOpacityForSecond(second: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [_datesWidget()],
            ),
            ...widget.descriptionList!.map(
              (desc) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    StyledText(
                      text: '\u2022 $desc',
                      tags: {
                        'b': StyledTextTag(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      },
                    ),
                  ],
                );
              },
            ).toList(),
          ],
        ),
      ),
    ];
  }

  Widget _datesWidget() {
    // check null
    if (widget.startDate == null || widget.endDate == null) {
      return const SizedBox(height: 0, width: 0);
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.endDate == ''
              ? '${widget.startDate}'
              : '${widget.startDate} - ${widget.endDate}',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  List<Widget> _iconsList() {
    // check null
    if (widget.iconList == null || widget.iconListTitle == null) {
      return [];
    }

    return [
      Opacity(
        opacity: _calculateOpacityForSecond(second: 2),
        child: Divider(
          color: widget.mainColor,
        ),
      ),
      Opacity(
        opacity: _calculateOpacityForSecond(second: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.iconListTitle!,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            _iconList(),
          ],
        ),
      ),
    ];
  }

  // icon list checked before used
  Widget _iconList() {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.iconList!.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Tooltip(
                message: widget.iconList![index],
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(
                      "assets/images/languages/${widget.iconList![index].toLowerCase()}.png",
                      height: 65,
                      width: 65,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _linksWidget() {
    // check null
    if (widget.linkedin == null || widget.website == null) {
      return const [];
    }
    return [
      Opacity(
        opacity: _calculateOpacityForSecond(second: 3),
        child: Divider(
          color: widget.mainColor,
        ),
      ),
      _website(),
      const SizedBox(height: 20),
      _linkedin(),
    ];
  }

  Widget _website() {
    return Opacity(
      opacity: _calculateOpacityForSecond(second: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Website',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () {},
            child: GestureDetector(
              onTap: () => _launchUrl(widget.linkedin!),
              child: Text(
                widget.website!,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _linkedin() {
    return Opacity(
      opacity: _calculateOpacityForSecond(second: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Linkedin',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () => _launchUrl(widget.linkedin!),
            child: Text(
              widget.linkedin!,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _launchUrl(String url) async {
    var scaffoldManager = ScaffoldMessenger.of(context);
    if (await canLaunchUrl(Uri.parse(widget.website!))) {
      launchUrl(Uri.parse(widget.website!));
    } else {
      scaffoldManager.showSnackBar(
        SnackBar(
          content: Text('Could not launch ${widget.website}'),
        ),
      );
    }
  }

  double _calculateOpacityForSecond({required int second}) {
    if (_animation.value < second) {
      return 0;
    } else {
      return math.min(1, _animation.value - second);
    }
  }
}
