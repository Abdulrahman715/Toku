import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});

  final ClassModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  item.enName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            iconSize: 30,
            color: Colors.white,
            disabledColor: Colors.grey,
            splashColor: const Color.fromARGB(255, 70, 62, 38),
            highlightColor: const Color.fromARGB(255, 107, 102, 86),
            tooltip: 'Play',
            // alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(right: 20),
            //!.....................................
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(item.sound));
            },
            // !.....................................
            icon: Icon(Icons.play_arrow),
          ),
      ],);
  }
}

