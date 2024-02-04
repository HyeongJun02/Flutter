import 'dart:html';

import 'package:flutter/material.dart';

var isDarkTheme = false;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    // MaterialApp : Material 테마 (+ Custom)
    return MaterialApp(
      home: Scaffold( // 상중하로 나눔

        appBar: AppBar( // 상단
          backgroundColor: ( isDarkTheme? Colors.black : Colors.white ),
          leading: IconButton( // leading: 제일 왼쪽 메뉴/내정보 아이콘
            icon: const Icon(Icons.menu),
            tooltip: '메뉴',
            onPressed: () {
              print('menu click');
            },
          ),
          title: Row(
            children: [
              Image.asset(
                '../assets/memologo_0.jpg',
                width: 40,
                height: 40,
                fit: BoxFit.fitHeight,
              ),
              Text(
                style: TextStyle(
                  fontSize: 23,
                  color: ( isDarkTheme? Colors.white : Colors.black ),
                ),
                'memotive',
              )
            ]
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: '검색',
              onPressed: () {
                print('search click');
              },
            ),
            IconButton(
              icon: const Icon(Icons.person_outline),
              tooltip: '내 정보',
              onPressed: () {
                print('person_outline click');
              },
            ),
          ],
        ),

        body: SizedBox( // TextButton(), IconButton(), ElevatedButton()
          // child: IconButton(
          //   icon: Icon(Icons.star),
          //   onPressed: (){
          //     print('아이콘 버튼 클릭');
          //   }
          // )

          // child: ElevatedButton(
          //   child: Text('글자'),
          //   onPressed: (){
          //     print('버튼 클릭');
          //   },
          //   style: ButtonStyle(
          //
          //   ),
          // ),

          // child: Text(
          //   '안녕',
          //   style: TextStyle(
          //     color: Color(0xff00ff00),
          //     fontSize: 100,
          //     backgroundColor: Colors.red,
          //     fontWeight: FontWeight.w700, // 폰트 두께
          //   ),
          //   onPressed: (){
          //     print('아이콘 버튼 클릭');
          //   }
          // ),
        ),

        bottomNavigationBar: BottomAppBar( // 하단
          child: SizedBox(
            //height: 200,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_month),
                    tooltip: '1',
                    onPressed: () {
                      print('1');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.alarm),
                    tooltip: '2',
                    onPressed: () {
                      print('2');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.home),
                    iconSize: 40,
                    tooltip: '3',
                    onPressed: () {
                      print('3');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.person),
                    tooltip: '4',
                    onPressed: () {
                      print('4');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    tooltip: '5',
                    onPressed: () {
                      print('5');
                    },
                  ),
                ]
            )
          )
        ),
      )
    );
  }
}
