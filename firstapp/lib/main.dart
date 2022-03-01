import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Home()),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Details',
        style: TextStyle(
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
        ),
      ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://media.istockphoto.com/photos/illustration-of-smiling-happy-man-with-laptop-sitting-in-armchair-picture-id1226886130'),
                radius: 50.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Divider(
              height: 60.0,
              color: Colors.grey[350],
            ),
            SizedBox(height: 20.0,),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[350],
                fontSize: 10.0,
                //fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              'Amit',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Current Ninja level',
              style: TextStyle(
                color: Colors.grey[350],
                fontSize: 10.0,
                //fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
               Icon(
                Icons.email,
                semanticLabel: 'Email',
                color: Colors.grey[350],
              ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Text(
                    'amit.ramachandran@gmail.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
            ],
            ),
            SizedBox(
              height: 2.0,
            ),
          ],
        ),
      ),
    );
  }
}
