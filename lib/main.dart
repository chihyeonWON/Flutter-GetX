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
      routes:{
        '/first':(context)=>MyHomePage(),
        '/second':(context)=>Reactive(),
      }
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
      appBar: AppBar(
        title: const Text("단순 상태관리"),
      ),
      body: Column(
        children: [
          Center(
            child: GetBuilder<SimpleController>( // 실시간 렌더링
              builder: (controller) {
                return ElevatedButton(
                  child: Text(
                    '현재 숫자: ${controller.counter}',
                  ),
                  onPressed: () {
                    controller.increase();
                    // Get.find<SimpleController>().increase();
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            child:Text('반응형 상태관리로'),
            onPressed:() async {
              await Navigator.pushNamed(
                context, '/second'
              );
            }
          )
        ],
      ),
    );
  }
}

class ReactiveController extends GetxController { // 반응형 상태관리를 위한 컨트롤러
  RxInt counter = 0.obs;

  void increase() {
    counter++;
  }
}

class Reactive extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Get.put(ReactiveController()); // 반응형  상태 관리 controller 등록
    return Scaffold(
      appBar:AppBar(title:Text('반응형 상태관리'),)
    );
  }
}
