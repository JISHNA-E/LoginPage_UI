import 'package:flutter/material.dart';
import 'package:flutterdemo/list.dart';

class listpage extends StatelessWidget {
   listpage({super.key});
List names = ["jishna","naziya","sana","sam","arathi"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      itemCount:5,itemBuilder:  (context, index) {
      return Container(
        height: 100,
        color: Colors.amber,
        margin: EdgeInsets.all(10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(names[index]),
          ],
        )
      );
    },),);
  }
}