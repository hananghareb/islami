import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_1/models/hadeth.dart';
class HadethDetails extends StatelessWidget {
  static const String routeName="hadeth";
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadethmodel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_bg.png"), fit: BoxFit.fill,)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Text(args.content[index],style: GoogleFonts.elMessiri(
            fontSize: 22,
            fontWeight: FontWeight.w100
          ),);
        },
          itemCount: args.content.length,
        ),

      ),
    );
  }
}
