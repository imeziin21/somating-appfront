import 'package:flutter/material.dart';

class FinalButton extends StatelessWidget {

  final Color color;
  final Color backcolor;
  final Border? border;
  final String text;
  final VoidCallback onTap;

  const FinalButton({
    super.key,
    required this.backcolor,
    required this.color,
    required this.border,
    required this.text,
    required this.onTap,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: backcolor,
        border: border,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
          onPressed: onTap,
          child: Text(
            text,
            style: TextStyle(
                color: color,
                fontSize: 15,
                fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          )
      ),
    );
  }
}
