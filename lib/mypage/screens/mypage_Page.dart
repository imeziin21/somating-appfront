import 'dart:io';

import 'package:catchingmaching/mypage/screens/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:catchingmaching/mypage/widget/customgesture.dart';
import 'package:catchingmaching/mypage/widget/customline.dart';

class MypagePage extends StatefulWidget {
  const MypagePage({super.key});

  @override
  State<MypagePage> createState() => _MypagePageState();
}

class _MypagePageState extends State<MypagePage> {
  File? selectedImage;

  Future<void> profileimage() async {
    final picker = ImagePicker();

    final XFile? image =
        await picker.pickImage(source: ImageSource.gallery);

  if (image != null) { setState(() { selectedImage = File(image.path); }); }
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset('assets/images/logo.png',width: 30,height: 30,),
            SizedBox(width: 4,),
            Text('SOMATING')
          ],
        ),
        titleTextStyle: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffF25C6D),
                          Color(0xffF7A3AE),
                        ]
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: selectedImage != null ?
                        Image.file(selectedImage!,fit: BoxFit.cover,) :
                        IconButton(
                            onPressed: (){
                              profileimage();
                            },
                            icon: Icon(Icons.camera_alt,color: Colors.grey[300],)
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '이지민',
                            style: TextStyle(
                              color: Color(0xff7A1F2B),
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            '경북소프트웨어마이스터고',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff9A5B63),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
              ),
              Container(
                width: double.infinity,
                height: 85,
                margin: EdgeInsets.only(top: 130,left: 20,right: 20),
                padding: EdgeInsets.only(top: 15,left: 20,right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.08),
                    )
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            '프로젝트',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 2,),
                        Text(
                          '5',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '지원',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 2,),
                        Text(
                          '12',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '스크랩',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 2,),
                        Text(
                          '3',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Customgesture(
              icon: Icon(Icons.post_add,color: Colors.grey,),
              text: '내가 작성한 글',
              onTap: (){}
          ),
          Customline(),
          Customgesture(
              icon: Icon(Icons.add_box_outlined,color: Colors.grey,),
              text: '내가 지원한 프로젝트',
              onTap: (){}
          ),
          Customline(),
          Customgesture(
              icon: Icon(Icons.star_border,color: Colors.grey,),
              text: '스크랩한 프로젝트',
              onTap: (){}
          ),
          Customline(),
          Customgesture(
              icon: Icon(Icons.settings,color: Colors.grey,),
              text: '계정 설정',
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Setting())
                );
              },
          )
        ],
      ),
    );
  }
}
