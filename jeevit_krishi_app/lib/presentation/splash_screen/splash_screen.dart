import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jeevit_krishi_app/theme/const_colors.dart';

import '../home_screen/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      //! exit full screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      //! navigate to home page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.bgColor,
      body: Center(
        child: Image.asset(
          "assets/images/splash_screen.png",
          width: double.infinity,
        ),
      ),
    );
  }
}
