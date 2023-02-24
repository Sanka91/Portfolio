import 'package:flutter/material.dart';

class ResponsiveRoot extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveRoot({Key? key, required this.mobile, required this.desktop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 750) {
          return mobile;
        } else {
          return desktop;
        }
      },
    );
  }
}
