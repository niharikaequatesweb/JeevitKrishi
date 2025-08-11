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
    final mq = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: ConstColors.darkGreen,
      body: Stack(
        children: [
          //! app image
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              width: mq.size.width * 0.25,
            ),
          ),
          //! app name
          Positioned(
            bottom: mq.size.height * .15,
            width: mq.size.width,
            child: Text(
              textAlign: TextAlign.center,
              "KisaanSeva",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
