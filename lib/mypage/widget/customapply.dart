import 'package:flutter/material.dart';

class Customapply extends StatelessWidget {
  final String text;
  final String cancel;
  final DateTime dateTime;

  const Customapply({
    super.key,
    required this.text,
    required this.cancel,
    required this.dateTime,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black.withOpacity(0.08)),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(text,style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,),),
          Spacer(),
          Column(
            children: [
              Container(
                height: 10,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.withOpacity(0.08),
                ),
                child: Text(
                    cancel,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              Text(
                  dateTime.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
