void main() {
  //var p = Point(2, 2);

// Get the value of y.
//assert(p.y == 2);

//double distance = p.distanceTo(Point(4, 4));

// var a = p?.y;

// var p1 = Point(2, 2);
// var p2 = Point.fromJson({'x': 1, 'y': 2});
// var p1 = new Point(2, 2);
// var p2 = new Point.fromJson({'x': 1, 'y': 2});
// var p = const ImmutablePoint(2, 2);
// var a = const ImmutablePoint(1, 1);
// var b = const ImmutablePoint(1, 1);

//assert(identical(a, b)); // 他们是同一个实例
// Lots of const keywords here.
// const pointAndLine = const {
//   'point': const [const ImmutablePoint(0, 0)],
//   'line': const [const ImmutablePoint(1, 10), const ImmutablePoint(-2, 11)],
// };
// var a = const ImmutablePoint(1, 1);
// var b = ImmutablePoint(1, 1);

//assert(!identical(a, b));
}

class Point {
  double? x;
  double? y;
  double z = 0;
}

// class Point {
//   double? x; // 声明实例变量 x，初始为 null
//   double? y;
// }

double initialX = 1.5;

// class Point {
//   double? x = initialX;
//   double? y = this.x;
//   late double? z = this.x;
//   Point(this.x, this.y);
// }
class ProfileMark {
  final String name;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);
  ProfileMark.unnamed() : name = '';
}

class Person {
  final String _name;

  Person(this._name);

  String greet(String who) => 'Hello, $who. I am $_name.';
}

// Person 接口的实现
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

// void main() {
//   print(greetBob(Person('Kathy')));
//   print(greetBob(Impostor()));
// }

class Queue {
  static const initialCapacity = 16;
}

// void main() {
//   assert(Queue.initialCapacity == 16);
// }

// import 'dart:math';

// class Point {
//   double x, y;
//   Point(this.x, this.y);

//   static double distanceBetween(Point a, Point b) {
//     var dx = a.x - b.x;
//     var dy = a.y - b.y;
//     return sqrt(dx * dx + dy * dy);
//   }
// }

// void main() {
//   var a = Point(2, 2);
//   var b = Point(4, 4);
//   var distance = Point.distanceBetween(a, b);
//   assert(2.8 < distance && distance < 2.9);
//   print(distance);
// }
