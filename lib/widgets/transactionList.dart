import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';
import '../common.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList({this.transactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            color: Theme.of(context).accentColor,
            width: double.infinity,
            child: Card(
              child: Text('Chart'),
            ),
          ),
          ListView(
            children: <Widget>[
              Card(
                elevation: 3,
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                          color: Theme.of(context).primaryColorDark,
                          width: 1.0,
                        ),
                      ),
                      child: FittedBox(
                        child: Text(
                          '\$ ${transactions[0].amount.toStringAsFixed(2)}',
                          style: TextStyle(
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 8.0,
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 14.0),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${transactions[0].title}',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              height: 1.4,
                            ),
                          ),
                          Text(
                            DateFormat.yMMMMd("en_US")
                                .format(transactions[0].date),
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic,
                                color: secondaryText),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
