import 'package:flutter/material.dart';

import 'drawer.dart';


class acceuil extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Acceuil"),
        ),
      drawer: Mydrawer(),
      body: Text(" mon acceuil"),
    );
  }
}