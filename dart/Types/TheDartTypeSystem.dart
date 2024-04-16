void printInts(List<int> a) => print(a);
//Dart 语言是类型安全的：
//它结合使用静态类型检查和运行时检查来确保变量的值始终与变量的静态类型匹配，
//有时称为健全类型。尽管类型是强制性的，但由于类型推断，类型注释是可选的。
void main() {
  final list = <int>[];
  list.add(1);
  list.add(2);
  printInts(list);
}


// class Animal {
//   void chase(Animal a) 
//   Animal get parent => 
// }


// class HoneyBadger extends Animal {
//   @override
//   void chase(Animal a) {}

//   @override
//   HoneyBadger get parent => 
// }

// class HoneyBadger extends Animal {
//   @override
//   void chase(Object a) {}

//   @override
//   Animal get parent => 
// }
// Map<String, dynamic> arguments = {'argA': 'hello', 'argB': 42};

// var arguments = {'argA': 'hello', 'argB': 42};
// num y = 3; // A num can be double or int.
// y = 4.0;

// List<int> listOfInt = [];

// var listOfDouble = [3.0];

// var ints = listOfDouble.map((x) => x.toInt());
// Cat c = Cat();
// Animal c = Cat();


// List<MaineCoon> myMaineCoons = 
// List<Cat> myCats = myMaineCoons;