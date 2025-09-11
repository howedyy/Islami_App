import 'package:flutter/material.dart';
import 'package:islami_app/core/resources/assets_manager.dart';
import 'package:islami_app/core/resources/colors_manager.dart';

class MostRecentItem extends StatelessWidget {
  const MostRecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.gold,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Al-Fatiha", style: TextStyle(fontSize: 24,color: ColorsManager.black, fontWeight: FontWeight.bold),),
                Text("الفاتحة", style: TextStyle(fontSize: 24,color: ColorsManager.black, fontWeight: FontWeight.bold),),
                Text("7 verses", style: TextStyle(color: ColorsManager.black,fontSize: 14, fontWeight: FontWeight.bold),)

              ],
              ),
                Image.asset(ImageAssets.mostRecentCard)
        ],
      ),
    );
  }
}
