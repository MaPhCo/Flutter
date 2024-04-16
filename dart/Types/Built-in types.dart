// 这些在常量字符串中工作
const aConstNum = 0;
const aConstBool = true;
const aConstString = 'a constant string';

// 这些在 const 字符串中不起作用
var aNum = 0;
var aBool = true;
var aString = 'a string';
const aConstList = [1, 2, 3];

const validConstString = '$aConstNum $aConstBool $aConstString';
// const invalidConstString = '$aNum $aBool $aString $aConstList';

void main() {
  // 检查是否有空字符串
  var fullName = '';
  assert(fullName.isEmpty);

// 检查是否为零
  var hitPoints = 0;
  assert(hitPoints == 0);

// 检查是否为空
  var unicorn = null;
  assert(unicorn == null);

// 检查 NaN
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}
