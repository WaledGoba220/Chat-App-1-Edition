import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback onpressed;

  const MyButton(
      {Key? key,
      required this.color,
      required this.title,
      required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 42,
          height: 42,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
