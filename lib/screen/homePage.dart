import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/transactionList.dart';
import '../models/transaction.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transaction> _userTx = [
    // Transaction(
    //   id: 't1',
    //   title: 'Kayak Gambia Flight',
    //   amount: 850.90,
    //   date: DateTime.now(),
    // ),
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
          child: TransactionList(transactions: _userTx),
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
