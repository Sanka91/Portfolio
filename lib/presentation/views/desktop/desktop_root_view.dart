import 'package:flutter/material.dart';
import 'package:portfolio_philipp_lemke/presentation/index_presentation.dart';

class DesktopRootView extends StatelessWidget {
  const DesktopRootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        height: 50,
        child: Text("Add icons8.com link"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DesktopHeaderView(),
            DesktopGridView(),
            // DesktopFirstView()
          ],
        ),
      ),
    );
  }
}
