import 'package:flutter/material.dart';
import 'package:animated_text/animated_text.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      child: AnimatedText(
        speed: const Duration(milliseconds: 2000),
        controller: AnimatedTextController.loop,
        displayTime: const Duration(milliseconds: 2000),
        wordList: const ['Erçağ', 'Uysal'],
        textStyle: GoogleFonts.quicksand(
            color: Colors.black, fontSize: 55, fontWeight: FontWeight.bold),
      ),
    );
  }
}
