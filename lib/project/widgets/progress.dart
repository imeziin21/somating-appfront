import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  final int count;

  const Progress({
    super.key,
    required this.count,
});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Line(lightline: count >= 1),

        Circle(
            number: 1, 
            lightCircle: count >= 1
        ),

        Line(lightline: count >= 2),

        Circle(
            number: 2,
            lightCircle: count >= 2
        ),

        Line(lightline: count >= 3),

        Circle(
            number: 3,
            lightCircle: count >= 3
        ),
        
        Line(lightline: false),
      ],
    );
  }
}

Widget Circle({
  required int number,
  required bool lightCircle,
}) {
  return Container(
    height: 30,
    width: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: lightCircle ? Colors.red : Colors.grey[300],
      shape: BoxShape.circle
    ),
    child: Text(
      number.toString(),
      style: TextStyle(
        color: lightCircle ? Colors.white : Colors.grey,
        fontWeight: FontWeight.bold
      ),
    ),
  );
}

Widget Line({
  required bool lightline,
}) {
  return Container(
    height: 3,
    width: 45,

    color: lightline ? Colors.red : Colors.grey[300],
  );
}