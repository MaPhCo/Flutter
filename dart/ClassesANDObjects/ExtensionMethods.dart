// void main() {
//   int.parse('42');
//   '42'.parseInt();
//   import 'string_apis.dart';
// print('42'.parseInt());

// extension NumberParsing on String {
//   int parseInt() {
//     return int.parse(this);
//   }
// }

// }

// import 'string_apis.dart';
// print('42'.padLeft(5));
// print('42'.parseInt());
// import 'string_apis.dart';
// import 'string_apis_2.dart' hide NumberParsing2;
// print('42'.parseInt());
// import 'string_apis.dart'; // 包含 NumberParsing 扩展
// import 'string_apis_2.dart'; // 包含 NumberParsing2 扩展
// print(NumberParsing('42').parseInt());
// print(NumberParsing2('42').parseInt());

// import 'string_apis.dart';
// import 'string_apis_3.dart' as rad;

// // 使用 string_apis.dart 中的 ParseNumbers 扩展
// print(NumberParsing('42').parseInt());

// // 使用 string_apis_3.dart 中的 ParseNumbers 扩展
// print(rad.NumberParsing('42').parseInt());

// // 只有 string_apis_3.dart 有 parseNum()
// print('42'.parseNum());

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}

extension MyFancyList<T> on List<T> {
  int get doubleLength => length * 2;
  List<T> operator -() => reversed.toList();
  List<List<T>> split(int at) => [sublist(0, at), sublist(at)];
}
