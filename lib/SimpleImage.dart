import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SimpleImpagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter layout demo 1'),
          ),
          body: Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset("assets/100x10.png"),
                ],
              )
          )

      ),
    );
  }
}