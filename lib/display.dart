import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class displayPage extends StatelessWidget{

  final Color color;

  const displayPage(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
    );
  }


}