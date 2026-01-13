import 'package:flutter/material.dart';
import 'package:toku/components/divider.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ClassModel> colors = const [
    ClassModel(
      sound: "sounds/colors/black.wav",
      image: "assets/images/colors/color_black.png",
      jpName: "くろ",
      enName: "black",
    ),
    ClassModel(
      sound: "sounds/colors/brown.wav",
      image: "assets/images/colors/color_brown.png",
      jpName: "ちゃいろ",
      enName: "brown",
    ),
    ClassModel(
      sound: "sounds/colors/dusty yellow.wav",
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: "きたないきいろ",
      enName: "dusty yellow",
    ),
    ClassModel(
      sound: "sounds/colors/gray.wav",
      image: "assets/images/colors/color_gray.png",
      jpName: "はいいろ",
      enName: "gray",
    ),
    ClassModel(
      sound: "sounds/colors/green.wav",
      image: "assets/images/colors/color_green.png",
      jpName: "みどり",
      enName: "green",
    ),
    ClassModel(
      sound: "sounds/colors/red.wav",
      image: "assets/images/colors/color_red.png",
      jpName: "あか",
      enName: "red",
    ),
    ClassModel(
      sound: "sounds/colors/white.wav",
      image: "assets/images/colors/color_white.png",
      jpName: "しろ",
      enName: "white",
    ),
    ClassModel(
      sound: "sounds/colors/yellow.wav",
      image: "assets/images/colors/yellow.png",
      jpName: "きいろ",
      enName: "yellow",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          'Colors',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff483228),
      ),

      // body:  ListView(
      //   children: getList(numbers),
      // ),
      body: ListView.separated(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(item: colors[index], color: Color(0xff79359F));
        },
        separatorBuilder: (context, index) {
          return DividerSpace();
        },
      ),
    );
  }
}
