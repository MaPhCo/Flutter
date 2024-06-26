//Dart 是一种真正的面向对象语言，因此即使函数也是对象并且具有类型 Function。
//这意味着函数可以分配给变量或作为参数传递给其他函数。
//可以像调用函数一样调用 Dart 类的实例

void main() {
// bool isNoble(int atomicNumber) {
//   return _nobleGases[atomicNumber] != null;
// }

// isNoble(atomicNumber) {
//   return _nobleGases[atomicNumber] != null;
// }

// bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

// void enableFlags({bool? bold, bool? hidden}) {}
// enableFlags(bold: true, hidden: false);
// /// Sets the [bold] and [hidden] flags ...
// void enableFlags({bool bold = false, bool hidden = false}) {...}

// //大胆将是真实的；隐藏将是错误的
// enableFlags(bold: true);

// const Scrollbar({super.key, required Widget child});

// repeat(times: 2, () {

// });
  String say(String from, String msg, [String? device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }

// assert(say('Bob', 'Howdy') == 'Bob says Howdy');
// assert(say('Bob', 'Howdy', 'smoke signal') ==
//     'Bob says Howdy with a smoke signal');
// String say(String from, String msg, [String device = 'carrier pigeon']) {
//   var result = '$from says $msg with a $device';
//   return result;
// }

  assert(say('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');
  void printElement(int element) {
    print(element);
  }

  var list = [1, 2, 3];

//将 printElement 作为参数传递
  list.forEach(printElement);

// const list = ['apples', 'bananas', 'oranges'];
// list.map((item) {
//   return item.toUpperCase();
// }).forEach((item) {
//   print('$item: ${item.length}');
// });

  bool topLevel = true;

  void main() {
    var insideMain = true;

    void myFunction() {
      var insideFunction = true;

      void nestedFunction() {
        var insideNestedFunction = true;

        assert(topLevel);
        assert(insideMain);
        assert(insideFunction);
        assert(insideNestedFunction);
      }
    }
  }

  Function makeAdder(int addBy) {
    return (int i) => addBy + i;
  }

// void main() {
//   var add2 = makeAdder(2);

//   // Create a function that adds 4.
//   var add4 = makeAdder(4);

//   assert(add2(3) == 5);
//   assert(add4(3) == 7);
// }

  void foo() {} // A top-level function

// void main() {
//   Function x;

//   // Comparing top-level functions.
//   x = foo;
//   assert(foo == x);

//   // Comparing static methods.
//   x = A.bar;
//   assert(A.bar == x);

//   // Comparing instance methods.
//   var v = A(); // Instance #1 of A
//   var w = A(); // Instance #2 of A
//   var y = w;
//   x = w.baz;

//   // These closures refer to the same instance (#2),
//   // so they're equal.
//   assert(y.baz == x);

//   // These closures refer to different instances,
//   // so they're unequal.
//   assert(v.baz != w.baz);
// }

  Iterable<int> naturalsDownFrom(int n) sync* {
    if (n > 0) {
      yield n;
      yield* naturalsDownFrom(n - 1);
    }
  }
}

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}
