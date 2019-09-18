import 'package:flutter/material.dart';
import 'quote.dart';
import 'quoteCard.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        quote:
            'When you reach the end of your rope, tie a knot in it and hang on.',
        author: 'Franklin D. Roosevelt'),
    Quote(
        quote: 'There is nothing permanent except change.',
        author: 'Heraclitus'),
    Quote(
        quote: 'Learning never exhausts the mind.', author: 'Leonardo da Vinci')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes List'),
        backgroundColor: Colors.blue[500],
      ),
      body: ListView(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList()),
    );
  }
}
