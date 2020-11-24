import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(Chats());
}

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
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
            new SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                new SizedBox(
                  width: 10,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/user.png'),
                    radius: 35.0,
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
                          'Ankit',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Text(
                          '8:38',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Hey there I am using WhatsApp',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.green,
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            new SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                new SizedBox(
                  width: 10,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/user.png'),
                    radius: 35.0,
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
                          'Varun',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          'Yesterday',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Thanks',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
            new SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                new SizedBox(
                  width: 10,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/user.png'),
                    radius: 35.0,
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
                          'Piyush',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Text(
                          '09/11/2019',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ok',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
            new SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                new SizedBox(
                  width: 10,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/user.png'),
                    radius: 35.0,
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
                          'Jarvis',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        SizedBox(
                          width: 140,
                        ),
                        Text(
                          '27/03/2019',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Bye',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
            new SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                new SizedBox(
                  width: 10,
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/user.png'),
                    radius: 35.0,
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
                          'BFF',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        SizedBox(
                          width: 165,
                        ),
                        Text(
                          '17/12/2018',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'You were added',
                      style: TextStyle(color: Colors.black, fontSize: 15),
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
                    Container(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.message,
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
