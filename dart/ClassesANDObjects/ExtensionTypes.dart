extension type IdNumber(int id) {
  operator <(IdNumber other) => id < other.id;
}

// void main() {
//   // 如果没有扩展类型的约束
//   int myUnsafeId = 42424242;
//   myUnsafeId = myUnsafeId + 10; // 这可行，但不允许用于 ID
//   var safeId = IdNumber(42424242);
//   safeId + 10;
//   myUnsafeId = safeId;
//   myUnsafeId = safeId as int;
//   safeId < IdNumber(42424241);
// }

extension type E(int i) {}

// extension type E(int i) {
//   E.n(this.i);
//   E.m(int j, String foo) : i = j + foo.length;
// }

// void main() {
//   E(4);
//   E.n(3);
//   E.m(5, "Hello!");
// }

// extension type const E._(int it) {
//   E(): this._(42);
//   E.otherName(this.it);
// }

// void main2() {
//   E();
//   const E._(2);
//   E.otherName(3);
// }
extension type NumberE(int value) {
  NumberE operator +(NumberE other) => NumberE(value + other.value);

  NumberE get myNum => this;

  bool isValid() => !value.isNegative;
}
extension type const Opt<T>._(({T value})? _) {
  const factory Opt(T value) = Val<T>;
  const factory Opt.none() = Non<T>;
}
extension type const Val<T>._(({T value}) _) implements Opt<T> {
  const Val(T value) : this._((value: value));
  T get value => _.value;
}
extension type const Non<T>._(Null _) implements Opt<Never> {
  const Non() : this._(null);
}
extension type MyString(String _) implements String {
  // @redeclare
  int operator [](int index) => codeUnitAt(index);
}

// extension type NumberE(int value) {
//   NumberE operator +(NumberE other) =>
//       NumberE(value + other.value);

//   NumberE get next => NumberE(value + 1);
//   bool isValid() => !value.isNegative;
// }

void testE() {
  var num = NumberE(1);
}

extension type NumberT(int value) implements int {
  // 没有显式声明 'int' 的任何成员
  NumberT get i => this;
}

// void main () {
//   var v1 = NumberT(1);
//   int v2 = NumberT(2);
//   var v3 = v1.i - v1;
//   var v4 = v2 + v1;
//   var v5 = 2 + v1;
//   //错误：扩展类型接口不可用于表示类型
//   v2.i;
// }

// void testE() {
//   var num1 = NumberE(1);
//   int num2 = NumberE(2);
//   num1.isValid();
//   num1.isNegative();
//   var sum1 = num1 + num1;
//   var diff1 = num1 - num1;
//   var diff2 = num1.value - 2;
//   var sum2 = num1 + 2;

//   List<NumberE> numbers = [
//     NumberE(1),
//     num1.next, // OK: 'next' getter returns type 'NumberE'.
//     1, // Error: Can't assign 'int' element to list type 'NumberE'.
//   ];
// }

// void main() {
//   var n = NumberE(1);
//   if (n is int) print(n.value);
//   if (n case int x) print(x.toRadixString(10));
//   switch (n) {
//     case int(:var isEven): print("$n (${isEven ? "even" : "odd"})");
//   }
// }

// void main() {
//   int i = 2;
//   if (i is NumberE) print("It is");
//   if (i case NumberE v) print("value: ${v.value}");
//   switch (i) {
//     case NumberE(:var value): print("value: $value");
//   }
// }
