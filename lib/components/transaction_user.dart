import 'package:expenses/models/transaction.dart';
import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo Tenis de Corrida',
        amount: 310.76,
        date: DateTime.now()
    ),
    Transaction(
        id: 't2',
        title: 'Conta de Luz',
        amount: 211.30,
        date: DateTime.now()
    ),Transaction(
        id: 't2',
        title: 'Conta de Luz',
        amount: 211.30,
        date: DateTime.now()
    ),Transaction(
        id: 't2',
        title: 'Conta de Luz',
        amount: 211.30,
        date: DateTime.now()
    ),Transaction(
        id: 't2',
        title: 'Conta de Luz',
        amount: 211.30,
        date: DateTime.now()
    ),Transaction(
        id: 't2',
        title: 'Conta de Luz',
        amount: 211.30,
        date: DateTime.now()
    ),Transaction(
        id: 't2',
        title: 'Conta de Luz',
        amount: 211.30,
        date: DateTime.now()
    ),Transaction(
        id: 't2',
        title: 'Conta de Luz',
        amount: 211.30,
        date: DateTime.now()
    ),Transaction(
        id: 't2',
        title: 'Conta de Luz',
        amount: 211.30,
        date: DateTime.now()
    ),
  ];


  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: 't3',
        title: title,
        amount: value,
        date: DateTime.now()
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TransactionList(_transactions),
        TransactionForm(_addTransaction)
      ],
    );
  }
}
