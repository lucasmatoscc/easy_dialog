import 'package:easy_dialog/testes.dart';
import 'package:flutter/material.dart';

void main() {
      runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialLocalizations.of(context);
    return MaterialApp(      
      debugShowCheckedModeBanner: false,
      title: 'Test',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{      
        '/': (context) => Teste(),        
      },
    );
  }
}
