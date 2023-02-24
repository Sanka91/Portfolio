import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String highlightedPrefixText;
  final String text;

  const AppBarButton(this.highlightedPrefixText, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(
                  text: highlightedPrefixText,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary)),
              TextSpan(
                text: text,
                style: const TextStyle(fontFamily: "Quicksand", fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
