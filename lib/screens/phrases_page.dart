import 'package:flutter/material.dart';
import 'package:toku/components/divider.dart';
// import 'package:toku/components/item.dart';
import 'package:toku/components/phrases_item.dart';
import 'package:toku/models/number.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({super.key});

  final List<ClassModel> phases = const [
    ClassModel(
      sound: "sounds/phrases/are_you_coming.wav",
      jpName: "来ますか？",
      enName: "are you coming?",
    ),
    ClassModel(
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
      jpName: "購読をお忘れなく",
      enName: "Don't forget to subscribe",
    ),
    ClassModel(
      sound: "sounds/phrases/i_am_coming.wav",
      jpName: "今行きます",
      enName: "I am coming",
    ),
    ClassModel(
      sound: "sounds/phrases/lets_go.wav",
      jpName: "さあ行こう",
      enName: "Let's go",
    ),
    ClassModel(
      sound: "sounds/phrases/what_is_your_name.wav",
      jpName: "あなたの名前は何ですか？",
      enName: "What is your name?",
    ),
    ClassModel(
      sound: "sounds/phrases/where_are_you_going.wav",
      jpName: "どこに行くの",
      enName: "Where are you going?",
    ),
    ClassModel(
      sound: "sounds/phrases/how_are_you_feeling.wav",
      jpName: "ご気分はいかがですか？",
      enName: "How are you feeling?",
    ),
    ClassModel(
      sound: "sounds/phrases/yes_im_coming.wav",
      jpName: "はい、行きます",
      enName: "Yes, I'm coming",
    ),
    ClassModel(
      sound: "sounds/phrases/i_love_anime",
      jpName: "私はアニメが大好きです",
      enName: "I love anime",
    ),
    ClassModel(
        sound: "sounds/phrases/i_love_programming.wav",
        jpName: "私はプログラミングが大好きです",
        enName: "I love programming"
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          'Phases',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff483228),
      ),

      // body:  ListView(
      //   children: getList(numbers),
      // ),
      body: ListView.separated(
        itemCount: phases.length,
        itemBuilder: (context, index) {
          return PhrasesItem(item: phases[index], color: Color(0xff46A4C9));
        },
        separatorBuilder: (context, index) {
          return DividerSpace();
        },
      ),
    );
  }
}
