import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SimplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ramesh Simple layout demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Simple Page demo'),
          ),
          body: Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   MyNameWidget("Hello,Ramesh"),
                  MyNameWidget("This is you Simple Page"),
                 MyStatefulWidget(sfName: "Tap Me")
                ],
              )
          )

      ),
    );
  }
}

class MyNameWidget extends StatelessWidget{
  final String name;
  const MyNameWidget(this.name);
  @override
  Widget build(BuildContext context){
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.lightBlue),
      child: Text(name),
    );
  }
}
class MyStatefulWidget extends StatefulWidget{
  final String sfName;
   MyStatefulWidget({this.sfName});

  @override
  _myStagefulWidgerState createState()   => _myStagefulWidgerState();

}

class _myStagefulWidgerState extends State<MyStatefulWidget> {
  int count=0;
  String name;

  @override
  void initState() {
    // TODO: implement initState
    this.name=widget.sfName;
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        setState(() {
          count++;
        });
      },
      child:  Text('$name : $count'),
    );

  }

}
