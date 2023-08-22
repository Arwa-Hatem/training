import 'package:flutter/material.dart';

class replacesetstate extends StatefulWidget {
  @override
  _replacesetstateState createState() => _replacesetstateState();
}

class _replacesetstateState extends State<replacesetstate> {
  Widget _data = Text("No data");

  void _showText() {
    setState(() {
      _data = Text("Hello we are ITI");
    });
  }

  void _showImage() {
    setState(() {
      _data = SizedBox(
        height: 100,
        width: 100,
        child: Image.network(
          "https://pub.dev/packages/bloc/versions/8.1.2/gen-res/gen/190x190/logo.webp",
        ),
      );
    });
  }

  void _showCircle() {
    setState(() {
      _data = Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Color.fromARGB(255, 117, 76, 121)),
      );
    });
  }

  void _reset() {
    setState(() {
      _data = Text("No data.");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _data,
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: _showText,
                child: Text("Show text"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 147, 107, 144))),
            ElevatedButton(
                onPressed: _showImage,
                child: Text("Show  image"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 147, 107, 144))),
            ElevatedButton(
                onPressed: _showCircle,
                child: Text("Show  circle"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 147, 107, 144))),
            ElevatedButton(
                onPressed: _reset,
                child: Text("Reset"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 147, 107, 144))),
          ],
        ),
      ),
    );
  }
}
