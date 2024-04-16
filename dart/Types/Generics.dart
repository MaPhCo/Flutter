abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// class Foo<T extends Object> {
//   // Any type provided to Foo for T must be non-nullable.
// }

// class Foo<T extends SomeBaseClass> {
//   // Implementation goes here...
//   String toString() => "Instance of 'Foo<$T>'";
// }

// class Extender extends SomeBaseClass {}

T first<T>(List<T> ts) {
  T tmp = ts[0];
  return tmp;
}

var names = <String>['Seth', 'Kathy', 'Lars'];
var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machines'
};
var nameSet = Set<String>.from(names);
void main() {
  // var views = Map<int, View>();
  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names is List<String>);
}
