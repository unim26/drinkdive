import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCardWidget extends StatefulWidget {
  final Gradient? gradient;
  final String image;
  final String title;
  final String info;
  final Size size;

  const MyCardWidget({
    super.key,
    required this.gradient,
    required this.image,
    required this.title,
    required this.info,
    required this.size,
  });

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Center(
        child: MouseRegion(
          onEnter: (_) => setState(() => isHover = true),
          onExit: (_) => setState(() => isHover = false),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 600),
            width: isHover ? widget.size.width * .8 : widget.size.width * .3,
            height:
                isHover ? widget.size.height * .7 : widget.size.height * .35,
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(
                horizontal: widget.size.width * .1, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isHover ? 30 : 100),
              gradient: widget.gradient,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(142, 240, 199, 1),
                  spreadRadius: 3,
                  blurRadius: 6,
                  offset: Offset(2, 2),
                )
              ],
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Image
                AnimatedPositioned(
                  duration: Duration(milliseconds: 800),
                  left: isHover ? -100 : 0,
                  right: isHover ? null : 0,
                  top: isHover ? 0 : -150,
                  // bottom: 0,
                  child: AnimatedScale(
                    duration: Duration(milliseconds: 800),
                    scale: isHover ? 2.2 : 1,
                    child: Image.asset(
                      widget.image,
                      height: isHover ? widget.size.height * .4 : null,
                    ),
                  ),
                ),

                // Title
                Padding(
                  padding: !isHover
                      ? EdgeInsets.zero
                      : EdgeInsets.only(left: 20.0, bottom: 10),
                  child: AnimatedAlign(
                    duration: Duration(milliseconds: 600),
                    alignment:
                        isHover ? Alignment.bottomLeft : Alignment.bottomCenter,
                    // left: isHover ? 100 : 0,
                    // right: isHover ? null : 0,
                    // bottom: isHover ? 40 : 0,
                    // // top: isHover ? 40 : 0,
                    child: Text(
                      widget.title,
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                    ),
                  ),
                ),

                // Info
                Padding(
                  padding: EdgeInsets.only(left: widget.size.width * .2),
                  child: Center(
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 800),
                      opacity: isHover ? 1 : 0,
                      child: Text(
                        isHover ? widget.info : '',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                  letterSpacing: .5,
                                  height: 1.4,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
