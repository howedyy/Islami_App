import 'package:flutter/material.dart';
import 'package:islami_app/core/resources/assets_manager.dart';
import 'package:islami_app/core/resources/colors_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  String currentTasbeh = "سبحان الله";

  List<String> tasbehList = [
    "سبحان الله",
    "الله اكبر",
    "الحمد لله"
  ];
  int currentTasbehIndex = 0;

  void _onSebhaClick() {
    setState(() {
      counter++;
      if (counter == 33) {
        counter = 0;
        currentTasbehIndex = (currentTasbehIndex + 1) % tasbehList.length;
        currentTasbeh = tasbehList[currentTasbehIndex];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(ImageAssets.sebhaBg),
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.8),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        children: [
          Image.asset(ImageAssets.islamiLogo),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.white
              ),
            ),
          ),
          const SizedBox(height: 50),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  children: [
                    Image.asset(ImageAssets.sebhaImage2),
                    GestureDetector(
                      onTap: _onSebhaClick,
                      child: Image.asset(ImageAssets.sebhaImage),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      currentTasbeh,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ColorsManager.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        counter.toString(),
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}