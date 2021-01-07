import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_steps/page/flutter_key_page.dart';

class GlobalKeyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
	    child: RaisedButton(
		    child: Text("change state"),
		    onPressed: (){
		    	globalKey.changeState();
		    },
	    ),
    );
  }
}
