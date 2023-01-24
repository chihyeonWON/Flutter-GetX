import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
    runApp(GetMaterialApp(home:MyApp())); // 첫페이지를 시작하는 부분을 GetMaterialApp으로 감싸줍니다.
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class SimpleController extends GetxController { // 단순상태관리를 위한 Controller 생성
  int counter = 0; // 정수형 counter 변수

  void increase() { // counter를 1씩 증가시키는 increase() 함수
    counter++;
    update();
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Get.put(SimpleController()); // controller 등록
    return Scaffold(
    );
  }
}
