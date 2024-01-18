import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 249, 247),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              height: 230,
            ),
            const SizedBox(
              height: 30,
            ),
            //if(Platform.isIOS)
            //const CupertinoActivityIndicator(
            //radius: 15,
            // )
            // else
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 248, 113, 3),
            )
          ],
        ),
      ),
    );
  }
}
