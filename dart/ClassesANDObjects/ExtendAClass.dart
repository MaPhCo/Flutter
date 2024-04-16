// class Television {
//   void turnOn() {
//     _illuminateDisplay();
//     _activateIrSensor();
//   }
// }

// class SmartTelevision extends Television {
//   void turnOn() {
//     super.turnOn();
//     _bootNetworkInterface();
//     _initializeMemory();
//     _upgradeApps();
//   }
// }

// class Television {
//   set contrast(int value) {...}
// }

// class SmartTelevision extends Television {
//   @override
//   set contrast(num value) {...}
// }

class A {
  // 除非你重写 noSuchMethod，否则使用
  // 不存在的成员会导致 NoSuchMethodError
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: '
        '${invocation.memberName}');
  }
}
