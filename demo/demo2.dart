void main() {
  _runes();
}

_datas() {
  //类型转换
//String -> int
  var one = int.parse("1");
  assert(one == 1);

//String -> double
  var onePointOne = double.parse("1.11");
  assert(onePointOne == 1.11);

//int ->String
  var oneAsString = one.toString();
  assert(oneAsString == "1");

//double ->String
  var doubleAsString = 3.1415926.toStringAsFixed(2);
  assert(doubleAsString == "3.14");

//num 类型按位操作的例子
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
}

_strings() {
  //Strings 类型
  //Dart 的String 是 UTF-16 编码的一个队列

  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  //String 类型可以使用 + 操作：
  var s5 = 'String ' 'concatenation' + " works even over line breaks.";
  assert(s5 ==
      'String concatenation works even over '
      'line breaks.');

  var s6 = 'The + operator ' + 'works, as well.';
  assert(s6 == 'The + operator works, as well.');

//  可以使用三个‘ 或“来定义多行的String 类型。
//  (这点和Python 语言类似。)
  var s7 = '''
You can create
multi-line strings like this one.
''';

  var s8 = """This is also a
multi-line string.""";

  //可以使用r 来修饰String类型，表 表明是“raw” 类型字符串：
  var s = r"In a raw string, even \n isn't special.";

  print(s);

  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  //String 类型是 compile-time 的常量。
  //可以在编译是才给String类型赋值。
  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = const [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString $aConstList';
}

_bools(){
//  booleans 类型
//  Dart 的布尔类型名字是bool，可能的取值包括”ture“ 和 ”false“。
//  ”bool“ 类型是 compile-time 的常量。
//
//  Dart 是强bool 类型检查，只有bool 类型的值是”true“ 才被认为是true。
  var name = true;
  if (name) {
    // Prints in JavaScript, not in Dart.
    print('You have a name!$name');
  }
}

_lists(){
  //Lists 类型
  //在 Dart　语言中，具有一系列相同类型的数据被称为 List 对象。
  //Dart List 对象类似JavaScript 语言的 array 对象。
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  //Dart list 对象的第一个元素的位置是0，最后个元素的索引是list.lenght - 1。
  list[1] = 1;
  assert(list[1] == 1);
}

_maps(){
  //Maps 类型
  //Map　类型将keys 和 values 关联在一起。
  //keys 和 values 可以是任意类型的对象。
  //像其它支持Map 的编程语言一样，Map 的 key 必须是唯一的。
  var gifts = {
  // Keys      Values
    'first' : 'partridge',
    'second': 'turtledoves',
    'fifth' : 'golden rings'
  };

  var nobleGases = {
  // Keys  Values
    2 :   'helium',
    10:   'neon',
    13:   'argon',
  };

  var gifts1 = new Map();
  gifts1['first'] = 'partridge';
  gifts1['second'] = 'turtledoves';
  gifts1['fifth'] = 'golden rings';

  var nobleGases1 = new Map();
  nobleGases1[2] = 'helium';
  nobleGases1[10] = 'neon';
  nobleGases1[18] = 'argon';

  //var gifts = {'first': 'partridge'};
  //assert(gifts['first'] == 'partridge');

  //var gifts = {'first': 'partridge'};
  assert(gifts['fifth'] != null);

  //var gifts = {'first': 'partridge'};
  gifts['fourth'] = 'calling birds';
  assert(gifts.length == 4);
}


_runes(){
//Dart 中 runes 是UTF-32字符集的string 对象。
//codeUnitAt 和 codeUnit 用来获取UTF-16字符集的字符。
//使用runes 来获取UTF-32字符集的字符。
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
}