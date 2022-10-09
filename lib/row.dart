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
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //agar row use kiys toh main axis is along horizontal....
        children: [
          Text("gg"),
          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.amber,
                   foregroundColor: Colors.purple[700],
              ),
            child: Text("nice"),
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.all(30.0),
            child:Text("nice again"),
          ),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("dabba n"),
        backgroundColor: Colors.purple[400],
      ),
    );
  }
}
