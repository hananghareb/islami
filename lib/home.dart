import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_1/tabs/ahdeth.dart';
import 'package:islami_1/tabs/quran.dart';
import 'package:islami_1/tabs/radio.dart';
import 'package:islami_1/tabs/sebha.dart';
import 'package:islami_1/tabs/setting.dart';

class Homelayout extends StatefulWidget {
  static const String routeNmme="home";

  @override
  State<Homelayout> createState() => _HomelayoutState();
}

class _HomelayoutState extends State<Homelayout> {


int currentindex=0;
List<Widget>tab=[qurantab(),sebhatab(),radiotab(),ahdethtab(),settingtab()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/main_bg.png'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("islami",style:GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF242424)
          )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:currentindex,
          onTap: (value) {
            currentindex=value;
            setState(() {

            });

          },
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png"),size: 28,),label: "quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha_blue.png"),size: 28,),label: ""),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png"),size: 28,),label: ""),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ahdeth.png"),size: 28,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),


          ],
        ),
        body: tab[currentindex],
      ),
    );

  }
}
