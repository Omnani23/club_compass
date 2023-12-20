import 'package:club_compass/aspects/function.dart';
import 'package:club_compass/aspects/images.dart';
import 'package:flutter/material.dart';
import 'package:club_compass/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = AppFunctions.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  dark ? AppImages.darkAppLogo : AppImages.whiteAppLogo,
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Color(0xFF111122)],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(double.infinity, 50),
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text("Get Started"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
