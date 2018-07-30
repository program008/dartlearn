void main() {
  print("hello world!");
  var number = 10;
  printNumber(number);
}

/**
 * 定义一个方法
 */
printNumber(num aNumber) {
  print("the number is $aNumber ");
}

dataType() {
  var sex = "man";
  String name = "ryan";

  //常量和固定值

  //final的值只能被设定一次。
  //const 是一个编译时的常量。( Const variables are implicitly final.)
  final int age = 1; //or final age = 2;
  //age = 2;//can only be set once.

  //通过对const类型做四则运算将自动得到一个const类型的值。
  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const atm = 1.01325 * bar; // Standard atmosphere

  //可以通过const来创建常量的值
  //就是说const[] 本身是构造函数。
  // Note: [] creates an empty list.
  // const [] creates an empty, immutable list (EIA).
  var foo = const []; // foo is currently an EIA.
  final bar1 = const []; // bar will always be an EIA.
  const baz = const []; // baz is a compile-time constant EIA.
  // You can change the value of a non-final, non-const variable,
  // even if it used to have a const value.
  foo = [];
  // You can't change the value of a final or const variable.
  // bar = []; // Unhandled exception.
  //baz = []; // Unhandled exception.
}
