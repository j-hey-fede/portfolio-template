import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final IconData icon;
  final Function onPressed;

  const ContactButton({
    Key key,
    this.buttonText,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            color: Colors.red,
          ),
          backgroundColor: Colors.amberAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.red,
        ),
        label: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
