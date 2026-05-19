import 'package:catchingmaching/screens/home_Page.dart';
import 'package:catchingmaching/screens/sign_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ishidden = true;
  bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png',width: 45,height: 45,),
                SizedBox(width: 5,),
                Text(
                  'SOMATING',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Text(
                '소마고 학생들을 연결하는 프로젝트 매칭플랫폼',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontFamily: 'GoogleFonts.lato()',
                fontSize: 14
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.05),
                  )
                ],
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.email,color: Colors.grey,),
                  hintText: 'name@sc.gyo6.net',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.05),
                  )
                ],
              ),
              child: TextField(
                obscureText: ishidden,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                  hintText: 'password',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          ishidden = !ishidden;
                        });
                      },
                      icon: ishidden?
                      Icon(Icons.remove_red_eye_outlined,color: Colors.grey,) :
                      Icon(Icons.remove_red_eye,color: Colors.grey,)
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Checkbox(
                    value: ischecked,
                    checkColor: Colors.white,
                    activeColor: Colors.red,
                    onChanged: (bool? value) {
                      setState(() {
                        ischecked = value;
                      });
                    }
                ),
                Text(
                  '로그인 유지',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 2),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.03),
                  )
                ],
                gradient: LinearGradient(
                    colors: [
                      Color(0xffd5041f),
                      Colors.red,
                      // Color(0xff8f0014),
                    ]
                ),
                borderRadius: BorderRadius.circular(17),
              ),
              child: TextButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage())
                    );
                  },
                  child: Text(
                    '로그인',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                    textAlign: TextAlign.center,
                  )
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '아직 계정이없다면?',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 13
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignPage()),
                    );
                  },
                  child: Text(
                    '회원가입',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
