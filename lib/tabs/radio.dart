import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class radiotab extends StatelessWidget {
  static const String routeName="radio";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/images/radioscreen.png"),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text("اذاعه القرءان الكريم",style: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.w300
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/play.png"),

        ],
      ),





    );
  }
}
