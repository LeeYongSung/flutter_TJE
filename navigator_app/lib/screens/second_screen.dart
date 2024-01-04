import 'package:flutter/material.dart';
import 'package:navigator_app/model/user.dart';
import 'package:navigator_app/screens/first_screen.dart';

class SecondScreen extends StatelessWidget {
  // final String data;
  final User user;

  // 생성자
  // : 클래스와 이름이 갑은 메소드 - 객체 생성 시 호출
  // 생성자 ( { } )
  // { } : 선택적 매개변수를 지원하는 문법
  // * this   : 객체 자기 자신
  // * super  : 부모 객체
  // required : 해당 매개변수 필수 여부를 지정하는 키워드
  // const SecondScreen({super.key, required this.data});
  const SecondScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('두번째 페이지')),
      body: Center(
        // child: Text('두번째 페이지 : $data'),
        child: Text('두번째 페이지 : ${user.id} ${user.name}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 페이지 이동하기 (2 ➡ 1)
          Navigator.pop(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const FirstScreen(),
            ),
          );
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
