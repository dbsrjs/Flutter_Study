import 'package:flutter/material.dart';

// Flutter 애플리케이션의 시작점입니다.
void main() {
  runApp(const MyApp());
}

// MyApp 클래스는 StatelessWidget을 상속받아 앱의 기본 구조를 정의합니다.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp은 앱의 전체적인 테마와 네비게이션을 관리하는 위젯입니다.
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배너를 숨깁니다.
      home: Flutter(), // Flutter 클래스를 홈 화면으로 설정합니다.
    );
  }
}

// Flutter 클래스는 StatelessWidget을 상속받아 홈 화면의 UI를 정의합니다.
class Flutter extends StatelessWidget {
  const Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold는 기본적인 화면 구조를 제공하는 위젯입니다.
      appBar: AppBar(
        // AppBar는 상단의 앱바를 정의합니다.
        title: const Text(
          "Hello Flutter!", // 앱바의 제목을 설정합니다.
          style: TextStyle(
            color: Colors.white, // 텍스트 색상을 흰색으로 설정합니다.
            fontSize: 32, // 텍스트 크기를 32로 설정합니다.
            fontWeight: FontWeight.bold, // 텍스트를 굵게 설정합니다.
          ),
        ),
        backgroundColor: Colors.blueAccent, // 앱바의 배경색을 파란색으로 설정합니다.
        centerTitle: true, // 제목을 가운데 정렬합니다.
      ),
      body: Center(
        // body는 메인 콘텐츠를 정의합니다.
        child: Column(
          // Column은 위젯들을 수직으로 배열합니다.
          children: [
            Padding(
              // Padding은 위젯 주위에 여백을 줍니다.
              padding: const EdgeInsets.only(
                top: 50, // 위쪽에 50만큼의 여백을 줍니다.
              ),
              child: Image.network(
                // Image.network는 네트워크 이미지를 로드합니다.
                "https://i.ibb.co/CwzHq4z/trans-logo-512.png", // 이미지 URL
                width: 150, // 이미지의 너비를 150으로 설정합니다.
                height: 150, // 이미지의 높이를 150으로 설정합니다.
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12, // 위아래로 12만큼의 여백을 줍니다.
                horizontal: 12, // 좌우로 12만큼의 여백을 줍니다.
              ),
              child: TextField(
                // TextField는 사용자가 텍스트를 입력할 수 있는 필드를 제공합니다.
                decoration: InputDecoration(
                  label: Text("이메일"), // 필드의 라벨을 "이메일"로 설정합니다.
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12, // 위아래로 12만큼의 여백을 줍니다.
                horizontal: 12, // 좌우로 12만큼의 여백을 줍니다.
              ),
              child: TextField(
                // TextField는 사용자가 텍스트를 입력할 수 있는 필드를 제공합니다.
                decoration: InputDecoration(
                  label: Text("비밀번호"), // 필드의 라벨을 "비밀번호"로 설정합니다.
                ),
              ),
            ),
            SizedBox(
              width: 400, // 버튼의 너비를 400으로 설정합니다.
              child: ElevatedButton(
                onPressed: () {}, // 버튼이 눌렸을 때의 동작을 정의합니다.
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // 버튼의 배경색을 파란색으로 설정합니다.
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5), // 버튼의 모서리를 둥글게 설정합니다.
                  ),
                ),
                child: const Text(
                  "로그인", // 버튼의 텍스트를 "로그인"으로 설정합니다.
                  style: TextStyle(color: Colors.white), // 텍스트 색상을 흰색으로 설정합니다.
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
