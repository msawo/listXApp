import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'package:list_x/common.dart';

class NewTransaction extends StatefulWidget {
  final Function txHandler;

  NewTransaction({this.txHandler});

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void _submitInput() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _titleController,
                onSubmitted: (_) => _submitInput(),
                decoration: InputDecoration(
                  labelText: 'Title',
                  hintText: 'i.e. Train fare',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: secondaryText,
                  ),
                ),
                cursorColor: Theme.of(context).primaryColor,
                maxLength: 42,
                textCapitalization: TextCapitalization.sentences,
              ),
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSubmitted: (_) => _submitInput(),
                decoration: InputDecoration(
                  labelText: 'Amount',
                  hintText: 'i.e. 33.00',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: secondaryText,
                  ),
                ),
                cursorColor: Theme.of(context).primaryColor,
                maxLength: 9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
