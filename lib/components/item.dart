// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color});

  final ClassModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: color, // variable color
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(item.image!)),
          
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}