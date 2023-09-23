import 'package:flutter/material.dart';

class DynamicDropdownButtonFormField<T> extends StatefulWidget {
  final String labelText;
  final List<T> items;
  final T value;
  final ValueChanged<T> onChanged;

  DynamicDropdownButtonFormField({
    required this.labelText,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  _DynamicDropdownButtonFormFieldState<T> createState() => _DynamicDropdownButtonFormFieldState<T>();
}

class _DynamicDropdownButtonFormFieldState<T> extends State<DynamicDropdownButtonFormField<T>> {
  late T _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: _selectedValue,
      onChanged: (newValue) {
        setState(() {
          _selectedValue = newValue!;
        });
        widget.onChanged(newValue!);
      },
      items: widget.items.map<DropdownMenuItem<T>>((T value) {
        return DropdownMenuItem<T>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
