import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model.dart/transaction.dart';
import '../common.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
} 

class _HomePageState extends State<HomePage> {
  List<Transaction> _transactionList = [
    Transaction(
      id: 't0',
      title: 'Amzn MarketPlace',
      amount: 1245.93,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Kayak Swiss Airlines',
      amount: 845.33,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ListX',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add, size: 30), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
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
                          '${_transactionList[0].amount.toStringAsFixed(2)}',
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
                            '${_transactionList[0].title}',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              height: 1.4,
                            ),
                          ),
                          Text(
                            DateFormat.yMMMMd("en_US").format(_transactionList[0].date),
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic, color: secondaryText),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, size: 30),
      ),
    );
  }
}
