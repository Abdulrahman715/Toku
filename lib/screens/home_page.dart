import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff483228),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: Color(0xffEF9235),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return  NumbersPage();
              }));
            },
          ),

          Category(
            text: 'Family Members',
            color: Color(0xff527F30),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return  FamilyMembersPage();
              }));
            },
          ),

          Category(
            text: 'Colors',
            color: Color(0xff7C3FA0),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return  ColorsPage();
              }));
            },
          ),

          Category(
            text: 'Phrases',
            color: Color(0xff46A4C9),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return  PharsesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}

// class Category extends StatelessWidget {
//   String? text;
//   Color? color;

//   Category({this.text, this.color});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       width: double.infinity,
//       alignment: Alignment.centerLeft,
//       padding: EdgeInsets.only(left: 20),
//       color: color,
//       child: Text(
//         text!,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }
