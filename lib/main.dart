import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotes_app/quote.dart';
import 'package:quotes_app/quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(author: 'Dainavi', text: 'This is Dainavi'),
    Quote(author: 'Dainavi', text: 'This is Dainavi'),
    Quote(author: 'Dainavi', text: 'This is Dainavi')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                    quote: quote,
                  ))
              .toList()),
    );
  }
}
