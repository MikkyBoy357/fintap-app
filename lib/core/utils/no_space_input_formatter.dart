import 'package:flutter/services.dart';

class NoSpaceInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.contains(' ')) {
      return oldValue; // Reject the change if it contains spaces
    }
    return newValue;
  }
}