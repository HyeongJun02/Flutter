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
        body: ListView(
          children: [
            ContactUI(),
            ContactUI(),
            ContactUI(),
            ContactUI(),
            ContactUI(),
            ContactUI(),
            ContactUI(),
          ]
        )
      )
    );
  }
}




// 커스텀 위젯
// stless 후 tap
class ContactUI extends StatelessWidget {
  const ContactUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        //color: Colors.red,
        padding: EdgeInsets.fromLTRB(10,5,0,5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.contact_page_outlined,
              size: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('미모티브', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('010-1234-5678'),
              ],
            )
          ],
        )
      ),
    );
  }
}
