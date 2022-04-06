import 'package:flutter/material.dart';
import 'package:roadmap_its_safe/OnBoard/on_board.dart';
import 'package:roadmap_its_safe/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Road map Its Safe',
      theme: ThemeData(
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      //home: const OnBoard(),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/onboard': (context) => const OnBoard(),
      },
    );
  }
}
