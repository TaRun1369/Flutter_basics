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
        child: IconButton(
          onPressed: () {
            print('kyu dabaya mujhe');
          },
          icon: Icon(
            Icons.alternate_email,
            color:Colors.amber,
          ),

        ),


        //mtd 2
        // child:
        // ElevatedButton.icon(
        //   // elevatedbutton ki jaghah flat button bhi use kar sakte...
        //   onPressed:() {
        //     print('kyu dabaya mujhe');
        //   },
        //   icon: Icon(
        //     Icons.mail,
        //   ),
        //   label: Text("mail me"),
        //   //color: Colors.amber,
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Colors.amber,
        //     foregroundColor: Colors.purple[700],
        //   ),
          //color: Colors.lightBlue,
        ),
        //mtd 2
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.blue[600],
        //   size: 70,
        // ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("dabba n"),
        backgroundColor: Colors.purple[400],
      ),
    );
  }

}