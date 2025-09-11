import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/resources/assets_manager.dart';
import 'package:islami_app/core/resources/colors_manager.dart';
import 'package:islami_app/feature/sura_details/verse_item.dart';
import 'package:islami_app/models/sura_models.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  late SuraModel suraArguments;
  List<String> verses = [];
  //String suraContent = "";


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    suraArguments = ModalRoute.of(context)?.settings.arguments as SuraModel;
    loadSuraContent(suraArguments.suraIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(suraArguments.suraNameEn),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImageAssets.suraDetailsPatternLeft),
                  Image.asset(ImageAssets.suraDetailsPatternRight),
                ],
              ),
              Text(
                suraArguments.suraNameAr,
                style: TextStyle(
                    color: ColorsManager.gold,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ) ,
              ),

            ],
          ),
          Expanded(
            child: verses.isEmpty ?
            Center(
              child: CircularProgressIndicator(
              color: ColorsManager.gold,
            ),
            )
            : ListView.builder(itemBuilder: (context, index)=>VerseItem(verse: verses[index]),itemCount : verses.length)
          ),

        ],
      ),
    );
  }

  void loadSuraContent(String suraIndex)async{
    String filePath = "assets/files/suras/$suraIndex.txt";
    String fileContent = await rootBundle.loadString(filePath);
    List<String> suraLines = fileContent.trim().split("\n");
    for(int i =0 ; i < suraLines.length; i++){
      suraLines[i]+= "[${i+1}]";
    }
    await Future.delayed(Duration(seconds: 1));

    setState(() {
      verses = suraLines;

    });
    // suraContent = suraLines.join();
    // setState(() {
    //
    // });

  //   suraContent = fileContent;
  //   setState(() {
  //
  //   });
   }

}
