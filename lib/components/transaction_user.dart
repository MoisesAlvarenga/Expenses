import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tênis de corrida',
      value: 310.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta de Agua',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta de telefone',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta de IPTU',
      value: 211.30,
      date: DateTime.now(),
    )
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
