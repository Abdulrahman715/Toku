import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/number.dart';


class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.color, required this.item});

  final Color color;
  final ClassModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 70,
      child: ItemInfo(
        item: item)
      ,);
  }
}