# getx

## Flutter의 Default 상태관리 기술
```
Flutter의 화면 구조는 크게 stateless Widget과 stateful Widget으로 나눴습니다.
StatefulWidget은 화면에 변화가 있는 동적인 화면을 구성할때 사용합니다.
체크박스나 라디오박스, 사용자가 텍스트를 입력하는 필드, 게임의 점수 등 실시간으로 업데이트되는 UI가 포함된 화면의 경우 StatefulWidget을 사용하게 됩니다.

Stateful Widget은 stateless Widget과 달리 State 형식의 또다른 서브클래스가 존재하는데 이 서브클래스가 동적인 화면을 렌더링하게 됩니다.
stateful Widget의 setState() 함수를 통해 화면 변경된 데이터로 화면을 재렌더링(build() 함수)하게 됩니다.

하지만 화면의 일부분의 변경을 적용하기 위해 화면 전체를 재렌더링 하는 방식은 너무 비효율적입니다.
Flutter가 디폴트로 제공하는 StatefulWidget을 통해서도 기능은 구현이 되지만 애플리케이션이 복잡해질수록 
setState() 로 전체 화면을 재렌더링 하는 방식은 비효율성이 애플리케이션에 규모에 비례하여 더 커지게 됩니다.

상태관리 기술을 사용하게 되면 실시간으로 변화하는 데이터에 대한 처리와 
여러 컴포넌트에서 공통적으로 사용하는 데이터의 동기화를 아주 쉽고 효율적으로 해결할 수 있습니다.
```

## GetX 상태 관리 라이브러리
```
1년 전에 전역하고 난 후에 웹 프로그래밍 공부를 할 때 React 웹 프레임워크의 상태관리 라이브러리인
Redux를 썼던 경험이 있다. Flutter의 앱 프로그래밍에서는 GetX, provider, Bloc패턴 등의 상태관리 라이브러리가
많이 있지만 그 중에 간단한 문법과 여러가지 기능을 가지고 있는 GetX 상태관리 라이브러리를 학습하였습니다.
```

## GetX 상태관리의 2가지 방식
```
flutter pub add get 명령어로 get 라이브러리를 설치합니다.

GetX 상태관리는 단순 상태관리와 반응형 상태관리 2가지 방식이 있습니다.
단순 상태 관리와 반응형 상태 관리의 차이는 반응형 상태 관리의 경우 데이터가 변화가 있을 때만 재랜더링을 하고
더 나아가 반응형 상태관리는 workers라는 추가 기능도 있습니다.
반면에 단순 상태 관리는 기존의 데이터와 변경되는 데이터가 같은지 확인하지 않습니다.
두가지 방식의 상태 관리를 코드로 확인해보겠습니다.
```

## 1. GetX의 단순 상태 관리 예시
```
첫 페이지를 시작하는 부분을 GetMaterialApp()으로 감싸줍니다.
```
![image](https://user-images.githubusercontent.com/58906858/214228879-9d5195b9-6af4-48fb-9dba-340021b806fa.png)

## 단순 상태 관리를 위한 Controller 생성
```
정수형 변수값을 저장하는 변수 counter와 이 변수를 1씩 증가시키는 increase() 함수가 들어있는 클래스
SimpleController를 생성합니다.
```
![image](https://user-images.githubusercontent.com/58906858/214229490-fc00e0d5-07aa-410d-aef8-09bf2ee592ca.png)

## 생성된 Controller를 등록
```
앞서 생성한 SimpleController를 등록하기 위해서 Get.put() 메서드를 사용합니다.
```
![image](https://user-images.githubusercontent.com/58906858/214230462-8a9a286f-000d-4c64-b91d-09a11ada0f87.png)

