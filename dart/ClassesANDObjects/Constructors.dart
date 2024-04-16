class Point {
  double x = 0;
  double y = 0;
  // 具有初始化形式参数的生成构造函数：
  Point(this.x, this.y);
}

class Point2 {
  final double x;
  final double y;

  // 设置 x 和 y 实例变量
  // 在构造函数主体运行之前
  Point2(this.x, this.y);
}

const double xOrigin = 0;
const double yOrigin = 0;

class Point3 {
  final double x;
  final double y;
  Point3(this.x, this.y);
  Point3.origin()
      : x = xOrigin,
        y = yOrigin;
}

class Vector2d {
  final double x;
  final double y;

  Vector2d(this.x, this.y);
}

class Vector3d extends Vector2d {
  final double z;
  Vector3d(super.x, super.y, this.z);
}

// import 'dart:math';

// class Point {
//   final double x;
//   final double y;
//   final double distanceFromOrigin;

//   Point(double x, double y)
//       : x = x,
//         y = y,
//         distanceFromOrigin = sqrt(x * x + y * y);
// }

// void main() {
//   var p = Point(2, 3);
//   print(p.distanceFromOrigin);
// }

class Point4 {
  double x, y;

  // 该类的主要构造函数
  Point4(this.x, this.y);

  // 委托给主构造函数
  Point4.alongXAxis(double x) : this(x, 0);
}

class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

class Logger {
  final String name;
  bool mute = false;
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}


// var logger = Logger('UI');
// logger.log('Button clicked');

// var logMap = {'name': 'UI'};
// var loggerJson = Logger.fromJson(logMap);