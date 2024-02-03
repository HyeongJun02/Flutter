import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stless 이후 Tap 누를 시 자동 코드 생성
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      /*
      - 글자: Text('내용')
      - 아이콘: Icon(Icons.star)
      아이콘 이름은 플루터 홈페이지
      - 이미지: Image.asset('경로')
      Image.asset('../assets/Ogu00.jpg')
      practice 폴더 안에 assets 폴더 생성 후 assets 폴더 안에 이미지 넣기
      이미지 등록해야 됨. pubspec.yaml(외부 패키지 및 라이브러리 정리) 파일 안에
      - 박스: Container() / SizedBox()
      Container( width: 50, height: 50, color: Colors.teal )
      크기 단위: LP, 50LP == 1.2cm
       */
      home: Center(
        child: Container( width: 50, height: 50, color: Colors.teal )
      )
    );
  }
}
