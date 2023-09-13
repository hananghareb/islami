import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_1/models/soramodel.dart';
import 'package:islami_1/suradetails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class qurantab extends StatelessWidget {
  static const String routeName="quran";
  List<String>suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/main_ic.png"),
          Divider(
            color: Color(0xFFB7935F),
            thickness: 2,
          ),
          Text("sura Names"
              ,style: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Color(0xFF242424)
          )),
          Divider(
            color: Color(0xFFB7935F),
            thickness: 2,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: Color(0xFF242424),
                );
              },
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Suradetails.routeName,
                    arguments:SuraModel(suraName[index], index));
                  },
                  child: Center(child: Text(suraName[index],style: GoogleFonts.quicksand(
                    fontSize: 22,

                  ),)),
                );
              },
              itemCount: suraName.length,
            ),
          )
        ],
      ),
    );
  }
}
