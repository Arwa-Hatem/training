import 'package:flutter/material.dart';

import 'replace.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

List<String> options = [
  'radio 1',
  'radio 2',
  'radio 3',
  'radio 4',
];

class _screen3State extends State<screen3> {
  bool _hasBeenPressed1 = true;
  bool _hasBeenPressed2 = true;
  bool _hasBeenPressed3 = true;
  bool _hasBeenPressed4 = true;
  bool _hasBeenPressed5 = true;

  String option = options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: [
                    ElevatedButton(
                      child: new Text('Done'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: _hasBeenPressed1
                            ? Color.fromARGB(255, 173, 176, 178)
                            : Color.fromARGB(255, 152, 113, 146),
                      ),
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed1 = !_hasBeenPressed1;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      child: new Text('Under revision'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: _hasBeenPressed2
                            ? Color.fromARGB(255, 173, 176, 178)
                            : Color.fromARGB(255, 152, 113, 146),
                      ),
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed2 = !_hasBeenPressed2;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      child: new Text('Completed'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: _hasBeenPressed3
                            ? Color.fromARGB(255, 173, 176, 178)
                            : Color.fromARGB(255, 152, 113, 146),
                      ),
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed3 = !_hasBeenPressed3;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      child: new Text('Canceled'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: _hasBeenPressed4
                            ? Color.fromARGB(255, 173, 176, 178)
                            : Color.fromARGB(255, 152, 113, 146),
                      ),
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed4 = !_hasBeenPressed4;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      child: new Text('Underway'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: _hasBeenPressed5
                            ? Color.fromARGB(255, 173, 176, 178)
                            : Color.fromARGB(255, 152, 113, 146),
                      ),
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed5 = !_hasBeenPressed5;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            title: Text('radio1'),
            leading: Radio(
              value: options[0],
              groupValue: option,
              onChanged: (value) {
                setState(() {
                  option = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Text('radio2'),
            leading: Radio(
              value: options[1],
              groupValue: option,
              onChanged: (value) {
                setState(() {
                  option = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Text('radio3'),
            leading: Radio(
              value: options[2],
              groupValue: option,
              onChanged: (value) {
                setState(() {
                  option = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Text('radio4'),
            leading: Radio(
              value: options[3],
              groupValue: option,
              onChanged: (value) {
                setState(() {
                  option = value.toString();
                });
              },
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => replace(),
                ),
              );
            },
            child: const Text('click here'),
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                elevation: 15,
                shadowColor: const Color.fromARGB(255, 86, 86, 85),
                backgroundColor: Color.fromARGB(255, 163, 114, 162),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                fixedSize: const Size(150, 10)),
          ),
        ],
      ),
    );
  }
}
