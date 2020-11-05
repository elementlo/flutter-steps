import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterWebviewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
	  appBar: AppBar(title: Text('Flutter Webview'),),
	  body: Center(
		  child: Column(
			  children: [
			  	RaisedButton(
					  child: Text('HTWebviewPage'),
					  onPressed: (){
						 //todo flutter webview
					  },
				  )
			  ],
		  ),
	  ),
  );
  }
	
}