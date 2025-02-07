import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  final String labelTextInput;
  final TextEditingController input;
  final String? Function(String?)? validatorFunction;

  const TextFormWidget({
    super.key,
    required this.labelTextInput,
    required this.input,
    this.validatorFunction
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: input,
      decoration: InputDecoration(
        labelText: labelTextInput,
        border: OutlineInputBorder(),
      ),
      validator: validatorFunction,
    );
  }
}