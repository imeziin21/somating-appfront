import 'package:flutter/material.dart';

class Customgesture extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback onTap;

  const Customgesture({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
        padding: EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        height: 50,
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
    );
  }
}
