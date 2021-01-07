import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_steps/page/flutter_key_page.dart';
import 'package:flutter_steps/page/flutter_webview_page.dart';

Future<void> appInit() async {}
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  Widget _buildItems({String title, IconData iconData, VoidCallback onTap}) {
    return ListTile(
      leading: Icon(
        iconData,
      ),
      title: Text(title),
      onTap: onTap,
    );
  }

  void onRandomDemo() {
    final Random random = Random();
    print('[KWLM]nextInt:${random.nextInt(100)}');
    print('[KWLM]nextDouble:${random.nextDouble()}');
    print('[KWLM]nextBool:${random.nextBool()}');
  }
  
  void _incrementCounter() {
    C()..fc();
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){
          //appInit();
          _incrementCounter();
          //onRandomDemo();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      body: ListView(
        children:
        [
          _buildItems(
            title: 'Key in Flutter Widgets',
            
            iconData: Icons.vpn_key,
            onTap: () {
              appInit();
              //globalKey.changeState();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FlutterKeyPage()),
              );
            },
          ),
          Divider(
            height: 1,
          ),
          _buildItems(
            title: 'Flutter Webview',
            iconData: Icons.web,
            onTap: () {
              //globalKey.changeState();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FlutterWebviewPage()),
              );
            },
          ),
          Divider(
            height: 1,
          ),
        ],
      ),
    );
  }
}

class C {
  C(){
  
  }
  void fc() {
    print('I am fc() in C.');
    
  }
}