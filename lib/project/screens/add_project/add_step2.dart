import 'package:catchingmaching/project/screens/add_project/add_step3.dart';
import 'package:flutter/material.dart';
import 'package:catchingmaching/project/widgets/progress.dart';
import 'package:catchingmaching/project/widgets/select_button.dart';
import 'package:catchingmaching/project/widgets/custom_textfield.dart';
import 'package:catchingmaching/project/widgets/final_button.dart';

class AddStep2 extends StatefulWidget {
  @override
  State<AddStep2> createState() => _Add1State();
}

class _Add1State extends State<AddStep2> {
  List<String> skills = [
    '프론트엔드',
    '백엔드',
    '디자이너',
    '기타'
  ];

  List selectskills =[];
  int peoplecount = 0;

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
              Progress(count: 2),
              SizedBox(height: 40,),
              Text(
                '모집 역할(복수선택 가능)',
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
                    itemCount: skills.length,
                    itemBuilder: (context,index) {
                      final skill = skills[index];

                      final selected = selectskills.contains(skill);

                      return SelectButton(
                          text: skill,
                          selected: selected,
                          onTap: (){
                            setState(() {
                              if(selected) {
                                selectskills.remove(skill);
                              }
                              else {
                                selectskills.add(skill);
                              }
                            });
                          }
                      );
                    }
                ),
              ),
              SizedBox(height: 30,),
              Text(
                '모집 인원',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: peoplecount == 0 ?
                        Colors.black.withOpacity(0.05):
                        Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black.withOpacity(0.07))
                    ),
                    child: IconButton(
                        onPressed: (){
                          setState(() {
                            if (peoplecount != 0) {
                              peoplecount -= 1;
                            }
                            else {
                            }
                          });
                        },
                        icon: peoplecount == 0 ?
                        Icon(Icons.remove,color: Colors.grey,):
                        Icon(Icons.remove,color: Colors.black,)
                    ),
                  ),
                  Container(
                      height: 50,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black.withOpacity(0.07))
                      ),
                      child: Text(
                        peoplecount.toString(),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black.withOpacity(0.07))
                    ),
                    child: IconButton(
                        onPressed: (){
                          setState(() {
                            peoplecount += 1;
                          });
                        },
                        icon: Icon(Icons.add,color: Colors.black,)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text(
                '사용 기술(선택)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              CustomTextfield(
                  hintText: '예) React, Node.js, MongoDB'
              ),
              SizedBox(height: 120,),
              FinalButton(
                  color: Colors.red,
                  backcolor: Colors.transparent,
                  border: Border.all(color: Colors.red),
                  text: '다음',
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddStep3()
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