import "package:flutter/material.dart";

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleController = TextEditingController();
  final amountControler = TextEditingController();

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountControler,
            ),
            FlatButton(
              child: Text("Add Transaction"),
              onPressed: () {
                addNewTransaction(
                    titleController.text, double.parse(amountControler.text));
              },
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
