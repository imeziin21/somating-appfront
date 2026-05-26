import 'package:catchingmaching/screens/login_Page.dart';
import 'package:flutter/material.dart';
import 'package:catchingmaching/mypage/widget/custombutton.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '설정',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 40,),
            Custombutton(
                icon: Icon(Icons.person_outline,color: Colors.grey),
                text: '계정 정보',
                onTap: (){}
            ),
            Custombutton(
                icon: Icon(Icons.notifications_none,color: Colors.grey),
                text: '알림 설정',
                onTap: (){}
            ),
            Custombutton(
                icon: Icon(Icons.message_outlined, color: Colors.grey),
                text: '문의하기',
                onTap: (){}
            ),
            SizedBox(height: 30,),
            Custombutton(
                icon: Icon(Icons.add_box_outlined,color: Colors.grey),
                text: '이용약관',
                onTap: (){}
            ),
            Custombutton(
                icon: Icon(Icons.add_box_outlined,color: Colors.grey),
                text: '개인정보처리방침',
                onTap: (){}
            ),
            SizedBox(height: 50,),
            Custombutton(
                icon: Icon(Icons.home_outlined,color: Colors.red,),
                text: '로그아웃',
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage())
                  );
                }
            )
          ],
        ),
      )
    );
  }
}
