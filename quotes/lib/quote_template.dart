import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quotelist.dart';

class QuoteCard extends StatelessWidget {

  final QuoteList quote_obj;
  final Function delete;

  QuoteCard(this.quote_obj, this.delete);
  // QuoteCard(delete, this.delete);


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
      color: Colors.deepPurple[100],
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(quote_obj.text,
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                color: Colors.white70
                            ),
                          ),
                          Text(quote_obj.author,
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton.icon(
                        onPressed: () => delete(),
                        icon: Icon(Icons.delete,
                        color: Colors.grey,
                        ),
                        label: Text('')),
                  ],
                ),
              ],
            ),
        ),
      );
  }
}

