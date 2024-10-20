import 'package:flutter/material.dart';

main() {
  // runApp에는 위젯을 넣어줘야함.
  // 무조건 외워야하는 규칙
  // 1. MaterialApp 항상 최상단에 위치해야함. runApp에 들어가는 위젯을 항상 MaterialApp이다.
  // 2. MaterialApp 바로아래는 Scaffold가 위치해야함.
  // MaterialApp: fultter에서 사용하면 Material 디자인을 사용할 수 있게 해주는 위젯
  // Scaffold: 기본 형태/구조를 만들 수 있도록 해주는 위젯
  // 위젯(widget) : 화면에 무언가를 보여주는 모든 요소를 위젯이라고 한다.

  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center( //위젯들을 화면 가운데로 정렬해주는 위젯
          child: Text(  //화면에 글씨를 나타내는 위젯
            'Hello World',
            style: TextStyle(color: Colors.white),  //TextStyle: 글씨에 스타일을 지정하는 위젯
          ),
        ),
      ),
    )
  );
}
