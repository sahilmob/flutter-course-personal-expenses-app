import "package:flutter/material.dart";
import 'package:personal_expenses_app/models/transaction.dart';
import 'package:personal_expenses_app/widgets/new_transaction.dart';
import 'package:personal_expenses_app/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
    Transaction(
        id: "t1", title: "New Shoes", amount: 69.99, date: DateTime.now()),
    Transaction(
        id: "t2",
        title: "Weakly Groceries",
        amount: 13.56,
        date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(), TransactionList(_transactions)],
    );
  }
}
