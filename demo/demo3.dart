/**
 * Created by tao.liu on 2018/7/30.
 * 函数(Functions)
    Dart 是一个面向对象的语言，所以即使是函数也是对象，函数属于Function对象。
    可以通过函数来指定变量或者像其它的函数传递参数。
 */

void main() {
  //assert(isNoble3(2) == true);
  //enableFlags(bold: true, hidden: false);

  //assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  //assert(say('Bob', 'Howdy', 'smoke signal') ==
    //  'Bob says Howdy with a smoke signal');

  //assert(say2('Bob', 'Howdy') ==
    //  'Bob says Howdy with a carrier pigeon');


  // Use the default values for both parameters.
  _doStuff();

  // Use the default values for the "gifts" parameter.
  _doStuff(list:[4,5,6]);

  // Don't use the default values for either parameter.
  _doStuff(list: null, gifts: null);
}

Map _nobleGases = {1: "one", 2: "two"};

bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

//可以去掉形式参数数据类型和返回值的数据类型。
isNoble1(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

//如果函数只有单个语句，可以采用简略的形式
//The => expr; syntax is a shorthand for { return expr;}.
bool isNoble3(int atomicNumber) => _nobleGases[atomicNumber] != null;

//可选的名字参数
//在调用函数时，可以指定参数的名字及相应的取值，采用paramName: value的格式。
/// Sets the [bold] and [hidden] flags to the values
/// you specify.{}
enableFlags({bool bold, bool hidden}) {
  // ...

  print("values->$bold and $hidden");
}

//可选的位置参数
//将参数使用[] 括起来，用来表明是可选位置参数。
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

//使用等号(`= `)来设置默位置字参数。
//```Dart
String say2(String from, String msg,
    [String device = 'carrier pigeon', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  return result;
}

_doStuff({List<int> list: const[1, 2, 3],
  Map<String, String> gifts: const{'first':  'paper',
    'second': 'cotton',
    'third':  'leather'}}) {
  print('list:  $list');
  print('gifts: $gifts');
}

//可以将一个函数作为一个参数传递给另一个函数
//也可以将函数赋值给一个变量
var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
void test(){
  assert(loudify('hello') == '!!! HELLO !!!');
}

//变量作用范围
//嵌套的函数中可以访问包含他的函数中定义的变量
var topLevel = true;
test2() {
  var insideMain = true;

  myFunction() {
    var insideFunction = true;

    nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}
//变量闭合
//函数可以返回一个函数
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

test3() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}

