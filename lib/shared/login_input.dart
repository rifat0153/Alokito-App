import '../shared/config.dart';
import 'package:flutter/material.dart';

class LoginInput extends StatefulWidget {
  final String hint;
  final Function onChanged;

  LoginInput({required this.hint, required this.onChanged});

  @override
  _MyNameInputState createState() => _MyNameInputState();
}

class _MyNameInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        // color: Color(0xFFc9c9c9),
        border: Border.all(color: LOGIN_COLOR, width: 3),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          style: TextStyle(color: Colors.white),
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
