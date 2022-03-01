import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quotelist.dart';
import 'quote_template.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<QuoteList> quotes = [
    QuoteList('I am my own boss', 'amit'),
    QuoteList('I love car', 'daniel'),
    QuoteList('I love man who dance', 'cuffs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Quotes feed'),
        titleSpacing: 2.0,
        centerTitle: true,
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote, (){setState(() {
          quotes.remove(quote);
        });})).toList(),
      ),
    );
  }
}
