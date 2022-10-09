import 'package:flutter/material.dart';
import 'package:untitled/Quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "gand mara", author: "chutiyA" ),
    Quote(text: "gand mara", author: "chutiyA" ),
    Quote(text: "gand mara", author: "chutiyA" )


    // "if someone argue,JUST SAY MAA CHUDA",
    // "if someone questions you, JUST SAY MAA CHUDA",
    // "Following quotes are subject to personal risk, do use it on your own."
  ];

  // Widget quoteTemplate(quote){
  //   return Card(
  //     margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
  //     child: Column(
  //       children: [
  //         Text(
  //           quote.text,
  //           style: TextStyle(
  //             fontSize: 18.0,
  //             color: Colors.grey[400],
  //           ),
  //         ),
  //         SizedBox(height:6.0),
  //         Text(
  //           quote.author,
  //           style:TextStyle(
  //             fontSize: 14.0,
  //             color: Colors.grey[850],
  //
  //           ),
  //         ),
  //       ],
  //
  //     ),
  //   );
  // }
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("its going to be legendary"),
        centerTitle: true,
        backgroundColor: Colors.redAccent[800],

      ),
      body:Column(
        children: quotes.map((quote) => Text("${quote.text} - ${quote.author}")).toList(),
      ),
    );
  }
}
