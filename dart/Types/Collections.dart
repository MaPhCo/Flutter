void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  list[1] = 1;
  assert(list[1] == 1);
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  var gifts1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  var nobleGases1 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  var gifts2 = {'first': 'partridge'};
  gifts['fourth'] = 'calling birds'; // 添加键值对
  var gifts3 = {'first': 'partridge'};
  assert(gifts['first'] == 'partridge');
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
}
