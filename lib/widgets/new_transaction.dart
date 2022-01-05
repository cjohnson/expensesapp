import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final void Function(String txTitle, double txAmount) addToUI;

  NewTransaction({Key? key, required this.addToUI}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
              onPressed: () => addToUI(titleController.text, double.parse(amountController.text)),
              child: const Text('Add Transaction', style: TextStyle(color: Colors.purple)),
            ),
          ],
        ),
      ),
    );
  }
}
