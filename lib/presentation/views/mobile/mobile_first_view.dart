import 'package:flutter/material.dart';

class MobileFirstView extends StatelessWidget {
  const MobileFirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      // color: Theme.of(context).colorScheme.primaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: "Hi, my name is\n", style: TextStyle(color: Theme.of(context).colorScheme.primary)),
                TextSpan(
                  text: "Poulomi Chakma.\n",
                  style: TextStyle(
                      fontFamily: "IndieFlower", fontSize: 50, color: Theme.of(context).colorScheme.onPrimaryContainer),
                ),
                TextSpan(
                  text: "I create designs like these...",
                  style: TextStyle(fontFamily: "Quicksand", fontSize: 50, color: Theme.of(context).colorScheme.primary),
                )
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: const Image(
              image: AssetImage("web/assets/images/Splash.png"),
            ),
          ),
        ],
      ),
    );
  }
}
