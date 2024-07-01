import 'package:flutter/material.dart';
import 'package:flutterdemo/design.dart';
import 'package:flutterdemo/flip.dart';
import 'package:flutterdemo/list.dart';
import 'package:flutterdemo/listpage.dart';
import 'package:flutterdemo/loginpage.dart';

import 'homepage.dart';

void main() {
  runApp( Firstpage());
}

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home:design(),);
  }
}
