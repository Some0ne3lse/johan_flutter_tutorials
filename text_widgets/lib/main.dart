import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
          child: Text.rich(
        TextSpan(
          text: 'Hello',
          style: GoogleFonts.robotoMono(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
          children: [
            TextSpan(
              text: '\nWorld',
              style: GoogleFonts.robotoMono(
                color: Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: '!',
            )
          ],
        ),
      )),
    ),
  ));
}
