import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 3,
                    width: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 52,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.grey,
                          ]
                      )
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 52,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 50,
                    color: Colors.grey[400],
                  ),
            ],
          ),
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
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 18,),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '제목을 입력하세요',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                  ),
                ),
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
              Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 18,),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '프로젝트를 간단히 소개해주세요.',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red,width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Add1())
                      );
                    },
                    child: Text(
                        '다음',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    )
                ),
              ),
          ],
                ),
        ),
      ),
    );
  }
}

class Add1 extends StatefulWidget {
  const Add1({super.key});

  @override
  State<Add1> createState() => _Add1State();
}

class _Add1State extends State<Add1> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 3,
                      width: 50,
                      color: Colors.grey[400],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.red),
                      ),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 3,
                      width: 52,
                      color: Colors.red,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 3,
                      width: 52,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.red,
                                Colors.grey,
                              ]
                          )
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 3,
                      width: 50,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
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

                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            if(selected) {
                              selectskills.remove(skill);
                            }
                            else {
                              selectskills.add(skill);
                            }

                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: selected ?
                                Colors.red.withOpacity(0.05) :
                                Colors.white,

                            border: selected ?
                                Border.all(color: Colors.red) :
                                Border.all(color: Colors.black.withOpacity(0.05)),

                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            skill,
                            style: TextStyle(
                              color: selected ?
                                  Colors.red :
                                  Colors.black,
                            ),
                            textAlign: TextAlign.center
                          ),
                        )
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
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '예) React, Node.js, MongoDB',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 120,),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red,width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Add2())
                        );
                      },
                      child: Text(
                        '다음',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

class Add2 extends StatefulWidget {
  const Add2({super.key});

  @override
  State<Add2> createState() => _Add2State();
}

class _Add2State extends State<Add2> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 3,
                    width: 50,
                    color: Colors.grey[400],
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.red),
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 52,
                    color: Colors.grey[400],
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.red),
                    ),
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 52,
                    decoration: BoxDecoration(
                        color: Colors.red
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 52,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.red,
                              Colors.grey,
                            ]
                        )
                    ),
                  ),
                ],
              ),
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
                      final skill = times[index];

                      final selected = selecttimes.contains(skill);

                      return GestureDetector(
                          onTap: (){
                            setState(() {
                              if(selected) {
                                selecttimes.remove(skill);
                              }
                              else {
                                selecttimes.add(skill);
                              }

                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: selected ?
                              Colors.red.withOpacity(0.05) :
                              Colors.white,

                              border: selected ?
                              Border.all(color: Colors.red) :
                              Border.all(color: Colors.black.withOpacity(0.05)),

                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                                skill,
                                style: TextStyle(
                                  color: selected ?
                                  Colors.red :
                                  Colors.black,
                                ),
                                textAlign: TextAlign.center
                            ),
                          )
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
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 18,),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '예) 3개월',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                  ),
                ),
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
              Container(
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 18,),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '추가 정보를 입력하세요.',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Add1())
                      );
                    },
                    child: Text(
                      '등록 완료',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
          children: [

          ],
        ),
      ),
    );
  }
}




