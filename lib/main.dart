import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home:Scaffold(
    appBar: AppBar(
      title: Text("first ..nice!"),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Center(
      child: Text(
        "good going",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 3.0,
          color: Colors.grey[600],
          fontFamily: 'IndieFlower',
        ),
      ),
    ),
     floatingActionButton: FloatingActionButton(
       onPressed: () {},
       child: Text("dabba n"),
       backgroundColor:Colors.purple[400],
     ),
  ),// ye common imp
));

//creating stateless widget for hot reload for faster update of changes..
// stless likh ke tab dabaa
// class test extends StatelessWidget {
//   const test({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
