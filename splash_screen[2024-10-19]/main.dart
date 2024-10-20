import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //FF: 투명도
        
        backgroundColor: const Color(0xFF335CB0),
        body: Padding(  // Padding: 여백 추가
          padding: const EdgeInsets.symmetric(horizontal: 28),  //symmetric: 대칭이라는 뜻으로 hottizontal, vertical 속성을 갖고 있음
          child: Column(  //Column: 여러명 자식을 가질 수 있음
            mainAxisAlignment: MainAxisAlignment.center,  //mainAxisAlignment: start, end, center 등
            children: [
              Image.asset('assets/img/logo.png'),
              const SizedBox( //SizedBox: 투명박스(여백)
                height: 28,
                ),
              const CircularProgressIndicator(  //CircularProgressIndicator: 버퍼링
                color: Colors.black,
              ),
            ],
          ),
        ),
      );
  }
}
