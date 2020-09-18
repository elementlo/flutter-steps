import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterKeyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterKeyState();
  }
}

class _FlutterKeyState extends State<FlutterKeyPage> {
  final GlobalKey<SwitcherState> _globalKey = GlobalKey();

  List<Widget> stlWidgets = [
    StatelessContainer(),
    StatelessContainer(),
  ];
  List<Widget> stfWidgets = [
    StatefulContainer(),
    StatefulContainer(),
  ];
  List<Widget> stfKeyWidgets = [
    StatefulContainer(
      key: ValueKey("1"),
    ),
    StatefulContainer(
      key: ValueKey("2"),
    ),
  ];
  List<Widget> wrapStfWidgets = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: StatefulContainer(
        key: UniqueKey(),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: StatefulContainer(
        key: UniqueKey(),
      ),
    ),
  ];
  List<Widget> wrapKeyStfWidgets = [
    Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: StatefulContainer(
        key: UniqueKey(),
      ),
    ),
    Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: StatefulContainer(
        key: UniqueKey(),
      ),
    ),
  ];

  switchWidgets(List<Widget> list) {
    list.insert(0, list.removeAt(1));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Key in Flutter Widgets"),
      ),
      body: Container(
        child: ListView(
          children: [
            ///stl正常交换了颜色, 没有使用key
            Text("StatelessWidgets switch colors without a key"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: stlWidgets,
            ),
            RaisedButton(
              child: Text("Switch Color"),
              onPressed: () {
                switchWidgets(stlWidgets);
              },
            ),

            ///canUpdate返回true, 交换了"widget"的位置, 但是element没有变
            Text("StatefulWidgets switch colors without a key"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: stfWidgets,
            ),
            RaisedButton(
              child: Text("Switch Color"),
              onPressed: () {
                switchWidgets(stfWidgets);
              },
            ),

            ///canUpdate返回false, 需要重建element, 此时在带有key的情况下会先去找element的列表里有没有谁的widget的key匹配, 此时就返回这个element.
            Text("StatefulWidgets switch colors with a key"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: stfKeyWidgets,
            ),
            RaisedButton(
              child: Text("Switch Color"),
              onPressed: () {
                switchWidgets(stfKeyWidgets);
              },
            ),
            Text(
                "StatefulWidgets switch colors with a key and a Widget outside"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: wrapStfWidgets,
            ),
            RaisedButton(
              child: Text("Switch Color"),
              onPressed: () {
                switchWidgets(wrapStfWidgets);
              },
            ),
            Text("Put the key outside the StatefulWidget"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: wrapKeyStfWidgets,
            ),
            RaisedButton(
              child: Text("Switch Color"),
              onPressed: () {
                switchWidgets(wrapKeyStfWidgets);
              },
            ),
            Text("Global key"),
            Center(
              child: SwitcherWidget(
                key: _globalKey,
              ),
            ),
            RaisedButton(
              child: Text("Change switcher's state"),
              onPressed: () {
                _globalKey.currentState.changeState();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class StatelessContainer extends StatelessWidget {
  final Color color = Color.fromARGB(255, Random.secure().nextInt(255),
      Random.secure().nextInt(255), Random.secure().nextInt(255));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

class StatefulContainer extends StatefulWidget {
  StatefulContainer({Key key}) : super(key: key);

  @override
  _StatefulContainerState createState() => _StatefulContainerState();
}

class _StatefulContainerState extends State<StatefulContainer> {
  final Color color = Color.fromARGB(255, Random.secure().nextInt(255),
      Random.secure().nextInt(255), Random.secure().nextInt(255));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

class SwitcherWidget extends StatefulWidget {
  SwitcherWidget({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SwitcherState();
  }
}

class SwitcherState extends State<SwitcherWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch.adaptive(
          value: isActive,
          onChanged: (bool currentStatus) {
            isActive = currentStatus;
            setState(() {});
          }),
    );
  }

  changeState() {
    isActive = !isActive;
    setState(() {});
  }
}
