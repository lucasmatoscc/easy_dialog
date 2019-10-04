import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  Teste({Key key}) : super(key: key);

  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
          padding: EdgeInsets.only(top: 50),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
               Row(
    children: <Widget>[
        Text('Location: '),
        Expanded(
            child: InkWell(
                onTap: () { // do something 
                },
                child: Text(
                    ' asdasdasdasdad  asdasdasdasdad ',
                    overflow: TextOverflow.ellipsis,
                ), // Text
            ), // InkWell
        ), // Expanded
    ], // <Widget>[]
),
              ])),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
