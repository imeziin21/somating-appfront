import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback onTap;

  const Custombutton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withOpacity(0.08)),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon,
              SizedBox(width: 5,),
              Text(text),
              Spacer(),
              Icon(Icons.chevron_right,color: Colors.grey,),
            ],
          ),
        ),
      ),
        SizedBox(height: 15,),
      ],
    );
  }
}
