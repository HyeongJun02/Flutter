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
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'menu',
              onPressed: () {
                print('menu click');
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Row( // 중단
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // [가로축] 가운데 정렬 (display flex 느낌)
              //crossAxisAlignment: CrossAxisAlignment.center, // [세로축] (body: Column인 경우)
              // 위 명령어는 Ctrl + Space 눌러서 자동완성도 가능
              children: [
                Container( width: 20, height: 20, color: Colors.blue ),
                Container( width: 20, height: 20, color: Colors.red ),
                Icon(Icons.star),
                Container( width: 20, height: 20, color: Colors.greenAccent ),
                Container( width: 20, height: 20, color: Colors.yellow ),
              ]
            ),
            Row(
              children: [
                Icon(Icons.shop)
              ]
            )
          ]
        ),
        bottomNavigationBar: BottomAppBar( // 하단
          child: SizedBox(
            //height: 200,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.calendar_month),
                  Icon(Icons.alarm),
                  Icon(
                    Icons.home,
                    size: 40,
                  ),
                  Icon(Icons.person),
                  Icon(Icons.settings),
                ]
            )
          )
        ),
      )
    );
  }
}
