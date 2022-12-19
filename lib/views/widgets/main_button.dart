import 'package:flutter/material.dart';

class Mainbutton extends StatelessWidget {
  final String text;
  //button using text entered by user
  final VoidCallback onTap;
  const Mainbutton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
        ),
        child: Text(
          text,
          // style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
