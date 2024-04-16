// a++ 自增
// a + b 相加
// a = b 赋值
// a == b 是否相等
// c ? a : b  三元运算符
// a is T T?应该是赋值bool值

void main() {
  //展示运算符的优先级
  int n = 0;
  int i = 10;
  int d = 20;
  if ((n % i == 0) && (d % i == 0)) ;
  if (n % i == 0 && d % i == 0) ;
  //虽然说第二行的代码可读性差，但是效果是和上面的代码一样的

  //和c语言不同的是
  //- 表示一元减号，也称为否定（反转表达式的符号）
  // / 表示就是正常的除法
  //~/ 表示除法，返回整数结果

  //dart也支持前++和后++
  //assert只有在false的时候才会panic
  int a;
  int b;
  a = 0;
  b = ++a;
  assert(a == b); // 1 == 1
  a = 0;
  b = a++;
  assert(a != b); // 1 != 0
  a = 0;
  b = --a;
  assert(a == b); // -1 == -1
  a = 0;
  b = a--;
  assert(a != b); // -1 != 0

  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  //这里应该是定义了一个结构体
  //as作为类型转换
  //is作为判断是否是这个类型
  // (employee as Person).firstName = 'Bob';
  //  这是简化的代码，下面的这个代码的全部含义
  //  if (employee is Person) {
  //   employee.firstName = 'Bob';
  // }

  //和c语言一样，可以进行运算符的结合使用，位运算也是可以的
  // var a = 2;
  // a *= 3;
  // assert(a == 6);
  // ??= 运算符
  //Assign value to b if b is null; otherwise, b stays the same
  //说是为一个null的变量进行赋值，如果这个变量不是null就会保持原来的值
  // b ??= value;

  //逻辑运算也是一样的
  bool done;
  done = true;
  int col = 10;
  if (!done && (col == 0 || col == 3)) ;

  //位运算
  final value = 0x22;
  final bitmask = 0x0f;
  assert((value & bitmask) == 0x02);
  assert((value & ~bitmask) == 0x20);
  assert((value | bitmask) == 0x2f);
  assert((value ^ bitmask) == 0x2d);
  assert((value << 4) == 0x220);
  assert((value >> 4) == 0x02);
  assert((-value >> 4) == -0x03);
  assert((value >>> 4) == 0x02);
  assert((-value >>> 4) > 0);

  //?:
  //var visibility = isPublic ? 'public' : 'private';
  //和c语言的三元运算符一样

  //??
  String playerName(String? name) => name ?? 'Guest';
  //String? 表示定义一个null的name
  //name要是null的话，就使用后面值
  // String playerName(String? name) => name != null ? name : 'Guest';
  // String playerName(String? name) {
  // if (name != null) {
  //    return name;
  //   } else {
  //     return 'Guest';
  //   }
  // }
  //以上的代码和上面的两句话效果是一样的

  // var paint = Paint() //这里应该是将一个函数赋值给了这个变量
  // ..color = Colors.black
  // ..strokeCap = StrokeCap.round
  // ..strokeWidth = 5.0;
  //上述代码的等效代码就是下面的
  // var paint = Paint();
  // paint.color = Colors.black;
  // paint.strokeCap = StrokeCap.round;
  // paint.strokeWidth = 5.0;
}
