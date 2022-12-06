import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tharasis_app/modules/modules.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // For Navigation after a delay for 2 sec
  void naviagateTo() async {
    //TODO: Future logic based rounting

    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.pushNamedAndRemoveUntil(
        context, OnBoardingScreen.routeName, (route) => false);
  }

  @override
  void initState() {
    super.initState();
    naviagateTo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              SlideInLeft(
                child: Image.asset('assets/T.png'),
              ),
              const SizedBox(height: 50),
              SlideInRight(
                child: Image.asset('assets/business.png', scale: 2),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
