import 'package:flutter/material.dart';

popupAskDynamic(context, String title, String body, VoidCallback action) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(title),
      content: Text(body),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'Cancel');
            action();
          },
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}
