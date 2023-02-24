import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaddedLabeledIcon extends StatefulWidget {
  final String imagePath;
  final String label;
  final Color shadowColor;

  static const ColorFilter greyscale = ColorFilter.matrix(<double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ]);

  PaddedLabeledIcon({Key? key, required this.imagePath, required this.label, required this.shadowColor}) : super(key: key);

  @override
  State<PaddedLabeledIcon> createState() => _PaddedLabeledIconState();
}

class _PaddedLabeledIconState extends State<PaddedLabeledIcon> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        onExit: (event) {
          setState(() {
            hovered = !hovered;
          });
        },
        onEnter: (event) {
          setState(() {
            hovered = !hovered;
            print("Mouse hovered over Image");
          });
        },
        child: AnimatedCrossFade(
          duration: Duration(milliseconds: 200),
          crossFadeState: !hovered ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          secondChild: Card(
            shadowColor: widget.shadowColor,
            color: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    widget.imagePath,
                    height: 50,
                  ),
                  Text(
                    widget.label,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          firstChild: ColorFiltered(
            colorFilter: PaddedLabeledIcon.greyscale,
            child: SvgPicture.asset(
              widget.imagePath,
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}
