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
    );
  }
}
    
    