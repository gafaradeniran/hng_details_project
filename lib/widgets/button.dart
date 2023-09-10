import 'package:flutter/material.dart';

Widget myButton(String text, final VoidCallback onPressed, double width) {
  return MaterialButton(
    onPressed: onPressed,
    color: Colors.purple,
    height: 50,
    minWidth: width,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Text(text,
        style: const TextStyle(color: Colors.white, fontSize: 25),
        textAlign: TextAlign.center),
  );
}
