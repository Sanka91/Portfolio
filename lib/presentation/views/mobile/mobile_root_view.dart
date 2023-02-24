import 'package:flutter/material.dart';
import 'package:portfolio_philipp_lemke/presentation/index_presentation.dart';

class MobileRootView extends StatelessWidget {
  const MobileRootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: SizedBox(
    //     height: 300,
    //     child: Container(
    //       color: Colors.red,
    //     ),
    //   ),
    // );
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            MobileHeaderView(),
            // MobileFirstView(),
          ],
        ),
      ),
    );
  }
}
