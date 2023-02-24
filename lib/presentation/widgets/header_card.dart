import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  final Widget child;

  const HeaderCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
        child: child
      ),
    );
  }
}
