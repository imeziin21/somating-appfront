트러블 슈팅
---

---
🚨 문제  
BottomNavigationBar를 이용한 메인 탭 구조와
프로젝트 등록기능(Addpage -> Step1 -> Step2 -> Step3 -> Final)을 함께 구현하는 과정에서 화면 전환과 네비게이션 상태가 꼬이는 문제가 발생했습니다. 

1. 탭 변경시 화면이 재 렌더링 되지 않았습니다.
2. Addpage에서 이동 후 네비게이션 상태 불일치가 나타났습니다.
3. 결과적으로 화면이 바뀌지 않거나 이전 상태가 유지되는 것처럼 보이는 현상이 발생했습니다.

---

❓ 발생 이유  
state 기반 UI와 stack기반 Navigator을 같이 사용했기 때문입니다.  
이 두 방식을 한 구조에서 혼용하면서 상태기준이 달라 UI불일치가 발생했습니다.

---

💪🏻 시도한 방법  
1. Moving callback을 통한 상태제어  
자식페이지(Addpage)에서 부모페이지(Homepage)의 탭 상태를 직접 변경하도록 구현하였습니다.  
```dart
Moving: (index) {
setState(() {
currentindex=index;
  });
}
```
결과 : 자식에서 부모상태를 직접 제어 할 수 있었으나 여전히 Navigator흐름과 state흐름이 충돌하여 UI불일치가 발생했습니다.  
  
2. Navigator.popuntil 사용  
초기에는 화면전환을 위해 Navigator.pushreplacement를 사용하였으나, 구조가 복잡해져 Navigator.popuntil을 사용하여 특정지점까지 한번에 되돌리고자 하였습니다.  
```dart
// 기존 코드
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (_) => HomePage()),
);
```  
```dart
// 변경 코드
Navigator.popUntil(context, (route) => route.isFirst);
```  
결과 : 여전히 BottomNavigationBar 구조와 함께 사용시 구조가 복잡하다는 단점이 존재했습니다.  

---

✅ 해결과정  
BottomNavigationBar는 메인 탭 이동만 하도록 제한하고, AddPage는 세부 Navigator로 분리했습니다.
```dart
// AddPage를 탭구조에서 제거
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
```   
최종구조 : BottomNavigationBar는 메인 화면 전환, Navigator는 프로젝트 등록 단계로 분류하면서 두 시스템을 완전히 분리했습니다.


---

🤩 해당 경험을 통해 알게된 점  
BottomNavigationBar와 Navigator는 반드시 역할을 분리해야된다는 점을 알게되었습니다.  
상태를 자식에서 부모로 직접 제어하는 구조는 복잡도를 증가시킨다는것을 알게되었습니다.
