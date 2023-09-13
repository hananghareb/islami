import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_1/mytheme.dart';

class sebhatab extends StatefulWidget {
  static const String routeName="sebha";

  @override
  State<sebhatab> createState() => _sebhatabState();
}
List<String>zekr=[
  "سبحان الله",
  "الحمد لله",
  "الله أكبر"


];
double rotate=0.0;
int index=0;
int count =0;
class _sebhatabState extends State<sebhatab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Image.asset("assets/images/head of seb7a.png"),
                Transform.rotate(
                  angle: rotate,
                    child: Image.asset("assets/images/body of seb7a.png",alignment: AlignmentDirectional.bottomCenter,))

              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text("عدد التسبحيات",style: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w200,
        ),),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text("$count",style: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w300
          ),),
          decoration: BoxDecoration(
            color: Color(0xbbb7935f),
            borderRadius: BorderRadius.circular(25)
          ),
        ),
        SizedBox(
          height: 22,
        ),
        InkWell(
          onTap: () {
            return zekrcounter();

          },
          child: Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(37),
              color: Mythemedata.PrimaryColor,
            ),

            child: Text(zekr[index],style: GoogleFonts.elMessiri(
                fontSize: 25,
                fontWeight: FontWeight.w300,
               color: Colors.white
            ),),

          ),
        )


    ]
    );
  }

  zekrcounter(){
    rotate+=0.1;
    count++;
    if(count==33) {
      index++;
      count = 0;
    }
      if(index >2){
        index=0;
      }

    setState(() {

    });

  }
}
