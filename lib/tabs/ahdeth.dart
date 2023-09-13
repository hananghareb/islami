import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_1/ahadethdetails.dart';
import 'package:islami_1/mytheme.dart';
import 'package:google_fonts/google_fonts.dart';


import '../models/hadeth.dart';

class ahdethtab extends StatefulWidget {

  @override
  State<ahdethtab> createState() => _ahdethtabState();
}

class _ahdethtabState extends State<ahdethtab> {
List<Hadethmodel>ahadethdata=[];

  @override
  Widget build(BuildContext context) {
    if(ahadethdata.isEmpty){
      loadhadeth();
    }
    return Column(
      children: [
        Image.asset("assets/images/hadeth_bg.png"),
        Divider(
          color: Mythemedata.PrimaryColor,
          thickness: 2,
        ),
        Text("Ahadeth",style: GoogleFonts.elMessiri(
          fontSize: 18,
          fontWeight:FontWeight.w100
        )),
        Divider(
          color: Mythemedata.PrimaryColor,
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
          color: Mythemedata.PrimaryColor,
    ),

            itemBuilder: (context, index) {
            return InkWell
              (onTap: () {
                Navigator.pushNamed(context, HadethDetails.routeName,
                  arguments:ahadethdata[index]
                );
              },
                child: Center(child: Text(ahadethdata[index].name,style:GoogleFonts.elMessiri(
                  fontSize: 23,
                  fontWeight: FontWeight.w300
                ),

                )),);
          },
            itemCount: ahadethdata.length,
          ),
        )


      ],
    );

  }

  void loadhadeth()async{
     String file = await rootBundle.loadString("assets/files/ahadeth .txt");
     List<String> ahadeth =file.split("#");

     for(int i=0;i<ahadeth.length;i++){
       List<String>lines= ahadeth[i].trim().split("\n");
       String hadethtitle=lines[0];
       lines.removeAt(0);
       List<String> hadethContent=lines;
       ahadethdata.add(Hadethmodel(hadethtitle, hadethContent));

     }
     setState(() {

     });
  }
}
