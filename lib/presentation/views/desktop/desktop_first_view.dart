import 'package:flutter/material.dart';

class DesktopFirstView extends StatelessWidget {
  const DesktopFirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: double.infinity,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Hi, my name is\n",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      TextSpan(
                        text: "Poulomi Chakma.\n",
                        style: TextStyle(
                            fontFamily: "IndieFlower",
                            fontSize: 50,
                            color: Theme.of(context).colorScheme.onPrimaryContainer),
                      ),
                      TextSpan(
                        text: "I create designs...",
                        style: TextStyle(
                            fontFamily: "Quicksand", fontSize: 50, color: Theme.of(context).colorScheme.primary),
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: const Image(
                    height: 150,
                    image: AssetImage("web/assets/images/Splash.png"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(
                thickness: 2,
                color: Colors.black,
                indent: constraints.maxWidth / 8,
                endIndent: constraints.maxWidth / 8,
              ),
            ),
          ],
        ),
      );
    });
  }
}
