import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList({Key? key, required this.transactions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: transactions.map((tx) {
      return Card(child: Row(children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.purple, width: 2)
          ),
          padding: EdgeInsets.all(10),
          child: Text(
            '\$${tx.amount}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.purple,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tx.title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(DateFormat.yMMMEd().format(tx.date),
              style: const TextStyle(color: Colors.grey),
            )
          ],
        )
      ],),);
    }).toList(),);
  }
}