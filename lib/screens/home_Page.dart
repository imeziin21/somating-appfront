import 'package:catchingmaching/project/screens/add_project/add_step1.dart';
import 'package:catchingmaching/screens/community_Page.dart';
import 'package:catchingmaching/mypage/screens/mypage_Page.dart';
import 'package:catchingmaching/screens/project_Page.dart';
import 'package:catchingmaching/project/screens/add_project/add_final.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;

  final pages = [
    HomeScreen(),
    ProjectPage(),
    Container(),
    CommunityPage(),
    MypagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddPage(),
              ),
            );
            return;
          }

          setState(() {
            currentindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.folder_copy_outlined), label: '프로젝트'),
          BottomNavigationBarItem(
            icon: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 32,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: '커뮤니티'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: '마이페이지'),
        ],
        selectedFontSize: 9,
        unselectedFontSize: 9,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey[400],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
    );
  }
}

