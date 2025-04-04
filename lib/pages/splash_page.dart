import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/');
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Center(
        child: Container(
          width: size.width * .2,
          height: size.height * .3,
          decoration: BoxDecoration(
            color: Colors.red.shade300,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              //image
              Positioned(
                left: 0,
                right: 0,
                top: -120,
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),

              //text
              Positioned(
                left: 80,
                // right: 0,
                bottom: 40,
                child: Text(
                  "Drink Dive",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
