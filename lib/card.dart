import 'package:flutter/material.dart';
import 'package:untitled/Quote.dart';
import 'package:untitled/Quote_card.dart';

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
    Quote(text: "gand mara", author: "-chutiye" ),
    Quote(text: "gand mara", author: "-chutiye" ),
    Quote(text: "nhi pata", author: "-chutiye" ),

    // "if someone argue,JUST SAY MAA CHUDA",
    // "if someone questions you, JUST SAY MAA CHUDA",
    // "Following quotes are subject to personal risk, do use it on your own."
  ];

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
        children: quotes.map((quote) => Quotecard(quote:


          quote: quote,
          delete: (){
          setstate(() {

          })


          }

        )).toList(),
      ),
    );
  }
}

