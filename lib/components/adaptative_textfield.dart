import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String) onSubmitted;

  AdaptativeTextField({
    required this.label,
    required this.controller,
    required this.onSubmitted,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
              placeholder: label,
              controller: controller,
              keyboardType: keyboardType,
              onSubmitted: onSubmitted,
              padding: EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            keyboardType: keyboardType,
            decoration: InputDecoration(labelText: label),
            controller: controller,
            onSubmitted: onSubmitted,
          );
  }
}
