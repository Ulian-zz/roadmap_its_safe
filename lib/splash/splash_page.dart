import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roadmap_its_safe/OnBoard/on_board.dart';
import 'package:roadmap_its_safe/theme/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      child: Center(
        child: Builder(
          builder: (context) {
            Future.delayed(const Duration(seconds: 4)).then((_) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const OnBoard()));
            });
            return Scaffold(
              body: Column(
                children: [
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: const BoxDecoration(
                      color: AppColors.backGroundSplash,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 255,
                        left: 105,
                        right: 105,
                        bottom: 388,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/Group 366.svg",
                        width: 180,
                        height: 251,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
