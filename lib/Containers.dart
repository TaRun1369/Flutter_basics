import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first ..nice!"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
       body:Padding(
         padding: EdgeInsets.all(30.0) ,
         child: Text('nice paadding'),

       ),
      // Container(
      //   padding: EdgeInsets.fromLTRB(20.0, 10.0, 50.0, 20.0),
      //   margin: EdgeInsets.fromLTRB(20.0, 10.0, 50.0, 20.0),
      //   color: Colors.grey,
      //   child: Text("hellloooooo"),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("dabba n"),
        backgroundColor: Colors.purple[400],
      ),
    );
  }
}
