import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx; //! note
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx); //! note

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              //onChanged: (val) {
              //  titleInput = val;
              //},
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              //onChanged: (val) => amountInput = val,
            ),
            TextButton(
              child: Text('Add Transaction'),
              onPressed: () {
                addTx(
                  //! note
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
