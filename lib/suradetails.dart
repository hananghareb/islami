import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_1/models/soramodel.dart';
import 'package:islami_1/mytheme.dart';

class Suradetails extends StatefulWidget {
  static const String routeName="sora";

  @override
  State<Suradetails> createState() => _SuradetailsState();
}

class _SuradetailsState extends State<Suradetails> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadfile(args.index);
    }
    loadfile(args.index);
    return Stack(
      children: [
        Image.asset("assets/images/main_bg.png",fit: BoxFit.fill,width: double.infinity),
      Scaffold(
        appBar: AppBar(
          title: Text(args.name,style: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Mythemedata.blackcolor
          ),),
        ),
        body:ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2,
             color: Mythemedata.PrimaryColor,
            );
          },
          itemBuilder: (context, index) {
          return Center(child: Text(verses[index],textAlign: TextAlign.center,style: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w100
          ),));
        },
          itemCount: verses.length,
        ) ,

      ),
    ],
    );
  }

  void loadfile(int index)async{
     String file=await rootBundle.loadString("assets/files/${index+1}.txt");
     List<String>suralines=file.split("/n");
     verses=suralines;
     print(suralines);
     setState(() {
     });
  }
}
