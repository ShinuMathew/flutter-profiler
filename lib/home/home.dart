import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {

  int profLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HACKATHON ID CARD", style: TextStyle(color: Colors.grey[400], letterSpacing: 2)),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("ADJUST PROFICIENCY", style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2,
              fontSize: 13,
              fontWeight: FontWeight.bold),),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if(profLevel>0) {
                  profLevel--;
                }
              });
            },
            child: Icon(Icons.arrow_downward),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                profLevel++;
              });
            },
            child: Icon(Icons.arrow_upward),
          ),
        ],
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding : EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profile_pic.jpeg"),
                radius: 50,
              ),
            ),
            Divider(height: 60, color: Colors.grey[800],),
            SizedBox(height: 30,),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2),
            ),
            SizedBox(height: 10,),
            Text(
              'SHINU MATHEW',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            Text(
              'PROFICIENCY LEVEL',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2),
            ),
            SizedBox(height: 10,),
            Text(
              '$profLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text("mathewshinu9474@gmail.com", style: TextStyle(color: Colors.grey[200], fontSize: 18),)
              ],
            )
          ],
        ),
      ),
    );

  }
}
