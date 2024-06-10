import 'package:flutter/material.dart';

popupAskLogout(context, String title, String body) {
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
          onPressed: () => null,
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}
