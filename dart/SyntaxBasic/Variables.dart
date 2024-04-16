//-------------NULL----------------
//这里定义的变量都是在外面定义的，不使用是不会进行报错的
var name01 = 'Bob';
Object name02 = 'Bob';
String name03 = 'Bob'; //没有使用 ? 表示没有启用null
String? name04 = 'Bob'; //使用 ? 表示启用null，即启用空性

//-------------延迟定义变量----------------
late String description;
//调用函数，但是，如果从来没有使用这个变量的话，就不会执行这个函数
// late String temperature = readThermometer();

//-------------设置最终变量以及常量值----------------
final name05 = 'Bob'; //这里是没有指定类型的
final String name06 = 'Bobby';

const bar = 1000000; //设置一下倍数
const double atm = 1.01325 * bar; //表示一下标准大气压
//DON'T use const redundantly.要注意不能随意的使用常量值

var foo = const []; //定义变量，同时指定后面的数组是常量值
final bar1 = const [];
const baz = []; //直接定义常量变量

//类型检查和强制转换(is和as)、集合if和扩展运算符(...和...?) 的常量：
const Object i = 3;
const list = [i as int];
const map = {if (i is int) i: 'int'};
const set = {
  if (list is List<int>) ...list
}; //Unnecessary type check; the result is always 'true'.
void main() {
  //var name = 'Tom';//定义了一个变量但是不使用会出现蓝线警告，但是不会报错

//-------------默认值----------------
  int? lineCount01;
  assert(lineCount01 == null);

  int lineCount02 = 0;

  int lineCount;
  bool weLikeToCount = true;
  //这里设置一下条件判断的值，固定为true
  //但是在判断语句中,else中的语句会直接报出蓝线警告，就是确定不执行了
  // if (weLikeToCount) {
  //   //条件判断
  //   lineCount = countLines(); //这里应该是调用函数
  // } else {
  //   lineCount = 0;
  // }
  // print(lineCount);

  //延迟定义变量测试
  description = 'Feijoada!';
  print(description);
  //输出结果  Feijoada!
  //late的作用一个是延迟初始化变量
  //一个是声明一个不可为 null 的变量，该变量在声明后进行初始化

  //name05 = 'Tom';
  //'name05' can't be used as a setter because it's final.
  //Try finding a different setter, or making 'name05' non-final.
  //由于定义了final，所以不能随意更改值

  foo = [1, 2, 3]; //更改非最终、非常量变量的值
  //baz = [42];
  //Constant variables can't be assigned a value.
  //Try removing the assignment, or remove the modifier 'const' from the variable.
}

int lineCount02 = 0; //必须为不为null的变量初始化他们的值
