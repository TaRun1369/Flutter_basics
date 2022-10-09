import 'package:flutter/material.dart';
import 'Quote.dart';

class Quotecard extends StatelessWidget {
  final Quote quote;
  final function delete;
  Quotecard({required this.quote, required this.delete});



  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[400],
              ),
            ),

            SizedBox(height:6.0),
            Text(
              quote.author,
              style:TextStyle(
                fontSize: 14.0,
                color: Colors.grey[850],

              ),
            ),
            SizedBox(height:6.0),
            // TextButton.icon(
            //   onPressed:(){}
            //     style:  label: Text('delete quote'),


            // ),
          ],

        ),
      ),
    );
  }
}
