import 'package:flutter/material.dart';
import 'package:toads_and_frogs/components/tiles.dart';

class GameLoop extends StatefulWidget {
  static const String route = '/game_loop';
  @override
  _GameLoopState createState() => _GameLoopState();
}

class _GameLoopState extends State<GameLoop> {
  // size and properties of tiles where frogs will be placed
  double left, right;
  double boxSize;
  int totalBoxes = 10;
  double totalScreenWidth;
  List<Box> boxList = List<Box>();
  double gap; // gap between each tiles

  _GameLoopState() {
    initialize();
  }
  void initialize() {
    createBoxList(totalBoxes);
  }

  void createBoxList(int n) {
    for (int i = 0; i <= n; i++) {
      boxList.add(Box());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 30.0),
          Center(
            child: Text(
              'Score is 10',
              style: TextStyle(fontSize: 50.0),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal ,
                  children: boxList,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 5.0,
        ),
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(color: Colors.amber),
        ),
        SizedBox(
          width: 5.0,
        ),
      ],
    );
  }
}
