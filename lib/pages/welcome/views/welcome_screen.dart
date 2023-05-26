import 'package:flutter/material.dart';
import 'package:u_learning/utils/constants/assets_manager.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset('assets/images/reading.png')
            ],
          )
        ],
      ),
    );
  }
}
