// pure function
int sum(int num1, int num2)  {
  return num1 + num2;
}

// recursion
int fibonacci(n) {
  if(n <= 0) return 0;
  if(n == 1) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// first class citizen (objek yang bisa disimpan kedalam variabel)
var sub = (int num1, int num2) {
  return num1 - num2;
};

Function lambda = () {
  print('This is lambda function');
};

// lambda support function expression
var divide = (num a, num b) => a / b;

// higher order function (function yang menerima function lain sebagai parameter)
void myHigherOrderFunction(String message, Function myFunction) {
  print(message);
  print(myFunction(3, 4));
}

// spek function agar parameter tidak ambigu
void myHigherOrderFunction2(String message, int Function(int a, int b) myFunction) {
  print(message);
  print(myFunction(3, 4));
}


// closure
Function calculate(base) {
  var count = 1;

  return () => print("Value is ${base + count++}");
}
