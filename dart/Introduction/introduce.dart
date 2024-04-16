void main() {
  print('Hello,world!');

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }
}

var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

var result = fibonacci(20);

class Spacecraft {
  String name;
  DateTime? launchDate;

  // 只读非最终属性
  int? get launchYear => launchDate?.year;

  // 构造函数，带有用于分配给成员的语法糖
  Spacecraft(this.name, this.launchDate) {
    // 初始化代码放在这里
  }

  // 转发到默认构造函数的命名构造函数
  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');
    //类型提升对吸气剂不起作用
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

enum PlanetType { terrestrial, gas, ice }

//枚举太阳系中不同行星的枚举
//以及他们的一些属性
enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  //常量生成构造函数
  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  // 所有实例变量都是最终变量
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  //增强的枚举支持 getter 和其他方法
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}
