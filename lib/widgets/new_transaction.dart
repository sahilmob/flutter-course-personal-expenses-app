import "package:flutter/material.dart";

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountControler = TextEditingController();

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
              onPressed: () {},
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
