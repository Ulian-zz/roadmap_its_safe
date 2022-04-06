import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roadmap_its_safe/theme/app_colors.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backGroundOnBoard,
        bottomOpacity: 0,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 40, top: 23),
            child: Text(
              'Skip',
              style: TextStyle(
                color: AppColors.backGroundSplash,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: AppColors.backGroundOnBoard,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 92,
                left: 70,
                right: 75,
              ),
              child: Image.asset(
                "assets/images/Pin@2x.png",
                width: 245,
                height: 245,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: const Text(
                'data',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.backGroundSplash,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
