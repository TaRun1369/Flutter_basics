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
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceevenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        // agar column use kiya toh main axis is in vertical direction
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.black12,
            child: Text("nice again"),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.yellow[400],
            child: Text("nice again ....."),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.blue[700],
            child: Text("nice again ..........."),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("dabba .      .   n"),
        backgroundColor: Colors.purple[400],

      ),
    );
  }
}
