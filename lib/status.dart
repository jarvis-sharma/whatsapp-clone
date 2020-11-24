import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(Status());
}

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
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
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    new SizedBox(
                      height: 10,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('asset/user.png'),
                                radius: 35.0,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  'My Status',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Tap to add status update',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
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
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.create,
                            color: Colors.black,
                            size: 30,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.camera_alt,
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
