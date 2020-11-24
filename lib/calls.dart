import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(Calls());
}

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  File _image;
  Future getImage() async {
    final image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
      print('$image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hello',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            title: Text(
              'WhatsApp',
              style: TextStyle(fontSize: 23),
            ),
            backgroundColor: Colors.teal[900],
            actions: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ])
            ],
            elevation: 0,
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.teal[900],
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new SizedBox(
                    width: 0,
                  ),
                  //Icon(
                  // Icons.camera_alt,
                  //color: Colors.white,
                  //),
                  FlatButton(
                    color: Colors.teal[900],
                    splashColor: Colors.teal[900],
                    onPressed: getImage,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                  new SizedBox(
                    width: 0,
                  ),
                  FlatButton(
                    color: Colors.teal[900],
                    splashColor: Colors.teal[900],
                    onPressed: () {
                      Navigator.pushNamed(context, '/chats');
                    },
                    child: Text(
                      "CHATS",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  new SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    color: Colors.teal[900],
                    splashColor: Colors.teal[900],
                    onPressed: () {
                      Navigator.pushNamed(context, '/status');
                    },
                    child: Text(
                      "STATUS",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  new SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    color: Colors.teal[900],
                    splashColor: Colors.teal[900],
                    onPressed: () {
                      Navigator.pushNamed(context, '/calls');
                    },
                    child: Text(
                      "CALLS",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                Text(
                  'To start calling contacts who have \n',
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'WhatsApp, tap ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Icon(Icons.add_ic_call),
                    Text(
                      ' at the bottom of \n',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Text(
                  'your screen.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Container(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.add_ic_call,
                            color: Colors.white,
                            size: 30,
                          ),
                        )),
                  ],
                ),
                new SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
