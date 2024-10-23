import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyableText extends StatelessWidget {
  final String text;

  CopyableText(this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: text));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Copy!'),
            duration: Duration(seconds: 2),
          ),
        );
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}