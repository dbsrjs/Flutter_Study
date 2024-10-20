import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/colors.dart'; // colors 리스트가 정의된 경로를 불러옴

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // 화면 내에서 요소들이 세로 방향으로 고르게 배치되도록 설정
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // 첫 번째 Row: 색상 리스트의 각 요소를 가로로 배치
            Row(
              // 색상 블록들이 좌우에 일정한 간격을 두고 정렬됨
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: colors.map((e) => Container(
                width: 50,
                height: 50,
                color: e, // 색상 리스트에서 가져온 색을 설정
              )).toList(), // colors 리스트의 모든 색상을 위젯으로 변환
            ),

            // 두 번째 Column: 주황색 블록을 세로로 배치
            Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange, // 고정된 주황색 블록
                ),
              ],
            ),

            // 세 번째 Row: 색상 리스트의 각 요소를 가로로 배치 (오른쪽 정렬)
            Row(
              // 색상 블록들이 우측 끝에 정렬됨
              mainAxisAlignment: MainAxisAlignment.end,
              children: colors.map((e) => Container(
                width: 50,
                height: 50,
                color: e, // 색상 리스트에서 가져온 색을 설정
              )).toList(), // colors 리스트의 모든 색상을 위젯으로 변환
            ),

            // 네 번째 Column: 녹색 블록을 세로로 배치
            Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green, // 고정된 녹색 블록
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// MainAxisAlignment.start: 주축의 시작에 정렬한다.
// MainAxisAlignment.center: 주축의 중앙에 정렬한다.
// MainAxisAlignment.end: 주축의 끝에 정렬한다.
// MainAxisAlignment.spaceBetween:
// 주축에서 위젯들 사이에 동일한 간격을 두고 정렬한다.
// MainAxisAlignment.spaceAround:
// 주축에서 위젯들 주변에 동일한 간격을 두고 정렬한다.
// MainAxisAlignment.spaceEvenly:
// 주축에서 위젯들 앞뒤 및 사이에 동일한 간격을 두고 정렬한다.

// Column과 Row의 성질
// 주축은 항상 최대크기를 차지함.
// 반대축은 항상 최소크기를 차지함.
