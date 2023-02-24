import 'package:flutter/material.dart';
import 'package:portfolio_philipp_lemke/presentation/index_presentation.dart';

class MobileHeaderView extends StatelessWidget {
  const MobileHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return //Header
        Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: const Image(
                  height: 50,
                  image: AssetImage("web/assets/images/Splash_3.png"),
                ),
              ),
              const Text(
                "PC",
                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "IndieFlower", fontSize: 25),
              ),
            ],
          ),
          const ResumeButton(),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
