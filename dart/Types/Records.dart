void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record.$1);
  print(record.a);
  print(record.b);
  print(record.$2);
  (num, Object) pair = (42, 'a');
  var first = pair.$1;
  var second = pair.$2;
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  print(point == color);
// 返回记录中的多个值：
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': 'blue',
  };

// 使用带有位置字段的记录模式进行解构：
  var (name, age) = userInfo(json);

// ({String name, int age}) userInfo(Map<String, dynamic> json)
// // 使用带有命名字段的记录模式进行解构：
// final (:name, :age) = userInfo(json);
}
