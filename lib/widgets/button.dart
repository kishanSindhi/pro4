import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key, required this.func, required this.text, required this.color})
      : super(key: key);

  final VoidCallback func;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: func,
        child: Text(text),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          elevation: MaterialStateProperty.all<double>(10),
        ),
      ),
    );
  }
}
