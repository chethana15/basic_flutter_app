import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Text("Flight", textDirection: TextDirection.ltr),
    );
  }
}