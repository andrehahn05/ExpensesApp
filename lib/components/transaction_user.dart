import 'dart:math';

import 'package:flutter/material.dart';
import 'tarnsaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Cadeira',
      value: 750.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 249.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta #1',
      value: 249.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta #2',
      value: 500.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta #3',
      value: 200.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Conta #4',
      value: 249.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Conta #5',
      value: 249.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      title: 'Conta #6',
      value: 500.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't9',
      title: 'Conta #7',
      value: 200.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Conta #4',
      value: 249.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
