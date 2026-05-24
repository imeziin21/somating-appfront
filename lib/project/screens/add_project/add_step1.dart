import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'add_step2.dart';
import 'package:catchingmaching/project/widgets/progress.dart';
import 'package:catchingmaching/project/widgets/custom_textfield.dart';
import 'package:catchingmaching/project/widgets/final_button.dart';

class AddPage extends StatefulWidget {
  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '프로젝트 등록',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 30,),
              Progress(count: 1),
              SizedBox(height: 40,),
              Text(
                '프로젝트 제목',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              CustomTextfield(
                  hintText: '제목을 입력하세요'
              ),
              SizedBox(height: 50,),
              Text(
                '프로젝트 소개',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              CustomTextfield(
                  height: 200,
                  maxLines: 5,
                  hintText: '프로젝트를 간단히 소개해주세요.'
              ),
              SizedBox(height: 50,),
              FinalButton(
                  color: Colors.red,
                  backcolor: Colors.transparent,
                  border: Border.all(color: Colors.red),
                  text: '다음',
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddStep2()
                        )
                    );
                  }
              ),
          ],
                ),
        ),
      ),
    );
  }
}






