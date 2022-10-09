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
        child:Image.network('https://images.unsplash.com/photo-1661956600655-e772b2b97db4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80https://images.unsplash.com/photo-1661956600655-e772b2b97db4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
        //child :Image.asset('assets/1.jpg'),
            // image: AssetImage('assets/3.jpg'),// ye mtd bhi tp thi really wali abhi widget ke samne likhunga
            // image: NetworkImage('https://images.unsplash.com/photo-1661956600655-e772b2b97db4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("dabba n"),
        backgroundColor: Colors.purple[400],
      ),
    );
  }

}