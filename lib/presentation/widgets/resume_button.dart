import 'package:flutter/material.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: (){},
      icon: Icon(Icons.download_for_offline_sharp),
      label: Text(
        "My Resume",
        style: TextStyle(fontFamily: "IndieFlower", fontSize: 20),
      ),
    );
  }
}
