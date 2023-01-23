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
