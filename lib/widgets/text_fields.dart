import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const TextFields({
    super.key, required this.hint, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: TextField(
        controller: controller,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        decoration: InputDecoration(
          fillColor: Color.fromARGB(255, 245, 243, 243),
          filled: true,
          labelText: hint,
          labelStyle: TextStyle(
            color: Colors.grey
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}