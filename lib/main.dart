import 'package:flutter/material.dart';
import 'package:flutterdemo/flip.dart';
import 'package:flutterdemo/loginpage.dart';

import 'homepage.dart';

void main() {
  runApp(const Firstpage());
}

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home:const loginpage(),);
  }
}
