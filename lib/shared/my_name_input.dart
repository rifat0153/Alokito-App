import 'package:flutter/material.dart';

class MyNameInput extends StatefulWidget {
  String hint;
  Function onChanged;

  MyNameInput({required this.hint, required this.onChanged});

  @override
  _MyNameInputState createState() => _MyNameInputState();
}

class _MyNameInputState extends State<MyNameInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        color: Color(0xFFc9c9c9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            hintText: widget.hint,
          ),
          onChanged: (value) => widget.onChanged(value),
        ),
      ),
    );
  }
}
