import 'package:flutter/material.dart';
import 'package:practice/login.dart'; // 테스트 스크린

var isDarkTheme = false;

void main() => runApp(
  MaterialApp(
    title: 'Navigator',
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/login': (context) => LoginScreen(),
      '/': (context) => MyApp()
    }
    //home: MyApp(),
  ),
);




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    // MaterialApp : Material 테마 (+ Custom)
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        // 레이아웃 용 위젯들이 너무 길다면? 커스텀 위젯
        body: ShopItem(),
      )
    );
  }
}




// 커스텀 위젯
// stless 후 tap
class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Text('안녕'),
    );
  }
}
