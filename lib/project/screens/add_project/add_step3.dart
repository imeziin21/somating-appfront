import 'package:catchingmaching/project/screens/add_project/add_final.dart';
import 'package:flutter/material.dart';
import 'package:catchingmaching/project/widgets/progress.dart';
import 'package:catchingmaching/project/widgets/select_button.dart';
import 'package:catchingmaching/project/widgets/custom_textfield.dart';
import 'package:catchingmaching/project/widgets/final_button.dart';


class AddStep3 extends StatefulWidget {
  @override
  State<AddStep3> createState() => _Add2State();
}

class _Add2State extends State<AddStep3> {
  List<String> times = [
    '온라인',
    '오프라인',
  ];

  List selecttimes =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
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
              Progress(count: 3),
              SizedBox(height: 40,),
              Text(
                '진행방식(복수 선택 가능)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 45,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: times.length,
                    itemBuilder: (context,index) {
                      final time = times[index];

                      final selected = selecttimes.contains(time);

                      return SelectButton(
                          text: time,
                          selected: selected,
                          onTap: (){
                            setState(() {
                              if (selected) {
                                selecttimes.remove(time);
                              }
                              else {
                                selecttimes.add(time);
                              }
                            });
                          }
                      );
                    }
                ),
              ),
              SizedBox(height: 50,),
              Text(
                '예상기간',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              CustomTextfield(
                  hintText: '예) 3개월'
              ),
              SizedBox(height: 50,),
              Text(
                '기타 사항(선택)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              CustomTextfield(
                  height: 100,
                  maxLines: 3,
                  hintText: '추가 정보를 입력하세요'
              ),
              SizedBox(height: 50,),
              FinalButton(
                  color: Colors.white,
                  backcolor: Colors.red,
                  border: Border.all(color: Colors.red),
                  text: '등록완료',
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Final()
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