import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[400],
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Center(
              child: Text(
                'Ask Me Anything',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          body: Magic(),
        ),
      ),
    );

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int ballImage = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              onPressed: () {
                setState(() {
                  ballImage = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballImage.png'),
            ),
          ),
        ],
      ),
    );
  }
}
