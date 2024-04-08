import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<List<String>> showCustomDialog(
    BuildContext context, String title, List<String> titles,
    {Function()? onCancel,
    Function(List<String>)? onConfirm,
    IconData? icon}) async {
  int numTextFields = titles.length;
  if (numTextFields <= 0) {
    return [];
  }
  List<TextEditingController> controllers = [];
  for (int i = 0; i < numTextFields; i++) {
    controllers.add(TextEditingController());
  }
  if (Platform.isIOS) {
    // Show an iOS-style dialog
    List<String>? values = await showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          content: Column(
            children: [
              if (icon != null) Icon(icon),
              Text(title),
              const SizedBox(height: 16),
              ...List.generate(
                numTextFields,
                (index) => CupertinoTextField(
                  controller: controllers[index],
                  placeholder: titles[index],
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            CupertinoDialogAction(
              onPressed: () {
                List<String> values = [];
                for (int i = 0; i < numTextFields; i++) {
                  String value = controllers[i].text;
                  if (value.isEmpty) {
                    value = 'default value';
                  }
                  values.add(value);
                }
                if (onConfirm != null) {
                  onConfirm(values);
                }
                Navigator.of(context).pop(values);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
    // Dispose of the text editing controllers
    for (int i = 0; i < numTextFields; i++) {
      controllers[i].dispose();
    }
    return values ?? [];
  } else {
    // Show a Material-style dialog
    List<String>? values = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            children: [
              if (icon != null) Icon(icon),
              Text(title),
              const SizedBox(height: 16),
              ...List.generate(
                numTextFields,
                (index) => TextField(
                  controller: controllers[index],
                  decoration: InputDecoration(
                    hintText: titles[index],
                  ),
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                List<String> values = [];
                for (int i = 0; i < numTextFields; i++) {
                  values.add(controllers[i].text);
                }
                if (onConfirm != null) {
                  onConfirm(values);
                }
                Navigator.of(context).pop(values);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
    // Dispose of the text editing controllers
    for (int i = 0; i < numTextFields; i++) {
      controllers[i].dispose();
    }
    return values ?? [];
  }
}

void showSnackbar(BuildContext context, Widget content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: content,
      // behavior: SnackBarBehavior.floating,
      elevation: 10,
    ),
  );
}
