import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    
     Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         ListView(
          children: [
            Container(
              color: Colors.amber,
            
              height: 100,
              width: 100,
            
            
            ),
            
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.green,
              height: 100,
              width: 100,
            )
         
          ],
             ),
       ],
     ),);
  }
}