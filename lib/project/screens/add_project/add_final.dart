import 'package:catchingmaching/screens/home_Page.dart';
import 'package:catchingmaching/screens/mypage_Page.dart';
import 'package:flutter/material.dart';
import 'package:catchingmaching/project/widgets/final_button.dart';

class Final extends StatefulWidget {
  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red
              ),
              child: Icon(Icons.check,color: Colors.white,size: 100,),
            ),
            SizedBox(height: 15,),
            Text(
                '등록 완료!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              '두근두근🚀 프로젝트 등록완료!\n좋은 팀원을 만나길 응원해요!',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 90,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  FinalButton(
                      backcolor: Colors.red,
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                      text: '홈페이지 이동',
                      onTap: (){
                        Navigator.popUntil(
                            context, (route) => route.isFirst
                        );
                      }
                  ),
                  SizedBox(height: 15,),
                  FinalButton(
                      backcolor: Colors.white,
                      color: Colors.black,
                      border: Border.all(color: Colors.grey),
                      text: '마이페이지 보기',
                      onTap: (){
                        Navigator.popUntil(
                            context, (route) => route.isFirst
                        );
                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}