import 'package:flutter/material.dart';
import 'package:skneyte/data/SocialProvider.dart';

import 'UX/ListSocialNetworks.dart';
import 'UX/twitter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Skneyte APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  SocialProvider socialProvider = SocialProvider();
 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          child: ListSocialNetworks(socialProvider)
      ),
      
    );
  }
}
