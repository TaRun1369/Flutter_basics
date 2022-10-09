import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: id(),
));

class id extends StatefulWidget {


  @override
  State<id> createState() => _idState();
}

class _idState extends State<id> {
  int Id_no = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Id_no += 1;
          });
        },
        child:Icon(Icons.add),
        backgroundColor: Colors.purple[200],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/download.jpg"),
                radius: 60.0,
              ),
            ),
            Divider(
              height:80.0,
              color: Colors.grey[800],
            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 1.5,
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Tarun Santani",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.5,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              "College",
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 1.5,
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "PICT",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.5,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              "ID NO.",
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 1.5,
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "$Id_no",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.5,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.lightBlue,
                ),
                SizedBox(width: 10.0,),
                Text(
                  "tarunsantani2003@gmail.com",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

