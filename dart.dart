// import 'package:dart/dart.dart' as dart;
import 'dart:io';
import 'Animal.dart';
import 'enum.dart';
import 'extension.dart';
import 'functional.dart';
import 'future.dart';
// void main(List<String> arguments) {
//   print('Hello world: ${dart.calculate()}!');
// }


// /// Fungsi [main] akan menampilkan 2 output
// /// Output pertama menampilkan teks dan output kedua menampilkan hasil perkalian pada library [belajar_dart]
// void main(List<String> arguments) {
//   // Mencetak Hello Dart! Dart is great. pada konsol
//   print('Hello Dart! Dart is great.');
//   // Testing documentation comment with [].
//   print('6 * 7 = ${dart.calculate()}');
// }

void variable() {
  String halo = 'Hello Dart!';
  var myAge = 20;
  var nama = 'Budi';
  print('$halo nama saya $nama, umur $myAge.');
}


void quiz1() {
  stdout.write('Nama Anda: ');
  String nama = stdin.readLineSync()!;
  stdout.write('Usia Anda: ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $nama, usia Anda $age tahun.');
}


void number() {
  var hex = 0xDEADBEEF;
  double lima = 5;
  var eleven = int.parse('11');
  var elevenPointTwo = double.parse('11.2');
  var elevenAsString = 11.toString();
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'
  print('$hex, $lima, $eleven, $elevenPointTwo, $elevenAsString, $piAsString.');
  string();
}


void string() {
  var name = 'Messi';
  print('Hello $name, nice to meet you.');
  print(r'Dia baru saja membeli komputer seharga $1,000.00');
  print('Hi \u2665');
}


void booleans() {
  bool alwysTrue = true;
  var alwysFalse = false;
  var notTrue = !true;
  bool notFalse = !false;
}


void operator() {
  var num1 = 5;
  num num2 = 8;
  var sum = num1 + num2;
  print(5 ~/ 2);
  print(sum);
}


void exception() {
  try {
    print(9 ~/ 0);
  } on Exception {
    print("Can't divide by zero.");
  }
}


void tryCatchFinally() {
  try {
    print(9 ~/ 0);
  } catch(e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    print('This line still executed');
  }
}


void apkKonversi() {
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  num fahrenheit = num.parse(stdin.readLineSync()!);
  var result = (fahrenheit - 32) * 5 / 9;
  var celcius = result.toStringAsFixed(0);
  print('$fahrenheit derajat Fahrenheit = $celcius derajat Celcius');
}


String greeting(String nama, int umur) {
  return '$nama, $umur';
}


String greetingArrowSyntax(String nama, int umur) => '$nama, $umur';


void optionalParameters() {
  //wajib
  // void greetNewUser(String name, int age, bool isVerified)
  // greetNewUser('Widy', 20, true);

  // parameter yg tidak diisi akan diisi dengan null
  // void greetNewUser([String name, int age, bool isVerified])
  // greetNewUser('Widy', 20, true);
  // greetNewUser('Widy', 20);
  // greetNewUser('Widy');
  // greetNewUser();

  // gunakan ? (int?) agar parameter bisa diisi nilai null
  // void greetNewUser([String? name, int? age, bool isVerified = false]) {}
  // greetNewUser(null, null, true);

  // jika kita hanya ingin mengisi parameter terakhir, kita perlu mengisi parameter sebelumnya dengan null. Untuk mengatasi masalah di atas kita bisa memanfaatkan named optional parameters. Pada opsi ini kita menggunakan kurung kurawal pada parameter
  // void greetNewUser({String? name, int? age, bool? isVerified})
  // greetNewUser(name: 'Widy', age: 20, isVerified: true);
  // greetNewUser(name: 'Widy', age: 20);
  // greetNewUser(age: 20);
  // greetNewUser(isVerified: true);

  // tandai parameter yg wajib diisi dengan keyword required
  // void greetNewUser({required String name, required int age, bool isVerified = false}) {}
}


void variableScope() {
  var isAvailableForDiscount = true;
  num price = 300000;
  num discount = 0;
  if (isAvailableForDiscount) {
    discount = 10 / 100 * price;
  }
  print('You need to pay: ${price - discount}');
}


void constAndFinal() {
  // const
  const num pi = 3.14;
  var radius = 7;
  var circleArea = pi * radius * radius;
  print('Luas lingkaran dengan radius $radius = $circleArea');

  // final
  stdout.write('masukkan nama: ');
  final name = stdin.readLineSync();
  print('$name');
}


void nullSafety() {
  // gunakan ? agar variable ditandai boleh memiliki nilai null
  int? number = null;
  print('$number');

  // gunakan ! (bang operator) jika yakin variable tidak akan bernilai null
}


void ifAndElse() {
  var hujanGak = true;
  print('Persiapan sebelum berangkat ke kantor');

  if(hujanGak) {
    print("Oh, hujan, bawa payung");
  }
    print("Berangkat kerja");
}


void forLoops() {
  var bntg = '';
  for(int i = 0; i <= 10; i++) {
    print('${bntg += '*'}');
  }
}


void whileDoWhile() {
  // comment salah satu agar kode berjalan sesuai yg dinginkan
  int i = 1;
  while(i < 10) {
    print(i);
    i++;
  }

  do {
    print(i);
    i++;
  } while (i < 1);
}


void doWhileExplain() {
  String username;
  bool notValid = false;

  do {
    stdout.write('Masukkan nama Anda (min. 6 karakter): ');
    username = stdin.readLineSync() ?? "";

    if(username.length >= 6) notValid = false;
    if (username.length < 6 ) {
      notValid = true;
      print('Username Anda tidak valid');
    }
  } while (notValid);
}


void breakPart() {
  var primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71];
  stdout.write('Masukkan bilangan prima: ');
  var searchNumber = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < primeNumbers.length; i++) {
    if(searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i+1}');
      break;
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }
}


void continuePart() {
  for(int i = 1; i <= 15; i++) {
    if(i % 2 == 0) {
      continue;
    }
    print(i);
  }
}


void switchAndCase() {
  stdout.write('Masukkan angka pertama: ');
  var angka1 = num.parse(stdin.readLineSync()!);
  stdout.write('Masukkan operator [ + | - | * | / ]: ');
  var operator = stdin.readLineSync();
  stdout.write('Masukkan angka kedua: ');
  var angka2 = num.parse(stdin.readLineSync()!);

  switch (operator) {
    case '+':
      print('$angka1 $operator $angka2 = ${angka1 + angka2}');
      break;
    case '-':
      print('$angka1 $operator $angka2 = ${angka1 - angka2}');
      break;
    case '*':
      print('$angka1 $operator $angka2 = ${angka1 * angka2}');
      break;
    case '/':
      print('$angka1 $operator $angka2 = ${angka1 / angka2}');
      break;
    default:
      print('Operator tidak ditemukan');
  }
}


void list() {
  // declaration
  List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8];
  var dynamicList = [1, true, 'ok'];

  // manipulation list
  dynamicList.add([1, 3, 5]);
  dynamicList.insert(1, 2);
  dynamicList[0] = 0;
  dynamicList.forEach((e) => print(e));

  numList.remove(2); // Menghapus list dengan nilai Programming
  numList.removeAt(0);           // Menghapus list pada index ke-1
  numList.removeLast();          // Menghapus data list terakhir
  numList.removeRange(2, 3);     // Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)
  print(numList);

  //spread operator
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [...favorites, ...others];
  print(allFavorites);
}


void set() {
  // declaration
  var numberSet = {1, 4, 7};
  Set<int> anotherSet = new Set.from([1, 4, 7, 4, 1]);
  var set3 = {1, 4, 9, 11, 15};

  // add
  numberSet.add(6);
  numberSet.addAll({2, 3, 4});

  // remove
  numberSet.remove(7);

  // built in method
  print(numberSet.union(set3));
  print(numberSet.elementAt(3));
  print(numberSet.intersection(set3));

  print(anotherSet);
  print(numberSet);
}


void map() {
  var capital = {
    'Jakarta': 'Indonesia',
    'Turki': 'Ankara',
    'Tokyo': 'Japan',
  };
  var keys = capital.keys;
  var values = capital.values;

  print(capital);
  print(capital['Turki']);
  print('$keys, $values');

  // add
  capital['Canberra'] = 'Australia';
  print(capital);

  // remove
  capital.clear();
  print(capital);
}


void classPart() {
  var cat = Cat('Oyen', 1, 2.1, 'Black');
  cat.eat();
  cat.poop();
  print(cat.weight);
}


void setterAndGetter() {
  // karena dart tidak memiliki visibility modifier seperti pada bahasa pemrogramana pada umumnya, sebagai gantiny, dart menggunakan _properties agar property tidak bisa diakses lagi dari luar, dan untuk mengaksesnya, gunakan setter dan getter untuk mengubah nilainya dari luar berkas.

  // Buka Animal.dart untuk implementasi setter dan getter
}


void cascadeNotation() {
  var cat = Cat('', 1, 2.4, 'White')
      ..name = 'Coky'
      ..eat();
}


void inheritance() {
  // Buka berkas Animal.dart dan lihat class Cat
  var cat = Cat('kity', 1, 3.1, 'Orange')
      ..walk()
      ..eat();
  print(cat.weight);
}


void Abstract() {
  // dengan membuat class menjadi abstract, class tidak akan bisa diinisalisasi.
  // tambahkan keyword abstract sebelum keyword class agar class menjadi abstract.
  // buka Animal.dart untuk implementasi
}


void implicitInterface () {
  // buka berkas Animal.dart lihat bagian class Flyable dan class Bird
  var bird = Bird('', 1, 0.4, 'blue')
      ..name = 'joko'
      ..fly();
}

void enumeratedTypes() {
  // dependent with enum.dart
  print(Weather.values);
  print(Weather.cloudy);
  print(Weather.sunny.index);
  print(Weather.sunny.name);

  var weatherForecast = Weather.cloudy;

  switch(weatherForecast) {
    case Weather.sunny:
      print("Today's weather forecast is sunny");
      break;
    case Weather.cloudy:
      print("Today's weather forecast is cloudy");
      break;
    case Weather.rain:
      print("Today's weather forecast is rain");
      break;
    case Weather.storm:
      print("Today's weather forecast is storm");
      break;
  }

  print(Weather2.rain.rainAmount);
  print(Weather2.cloudy);
}


void Mixin() {
  // dependent with Animal.dart
  var rossa = Musician();
  rossa.perform();
}


void extensionMethod() {
  // dependent with extension.dart
  var angkaAcak = [4, 7, 2, 5, 6, 9, 1, 8, 3];
  print(angkaAcak);
  var angkaUrut = angkaAcak.sortAsc();
  print(angkaUrut);
}


void functional() {
  // dependent with functional.dart
  print('${sum(3, 5)}, ${fibonacci(6)}');
  lambda();
  print('${sub(3, 5)}, ${divide(12, 5)}');
  myHigherOrderFunction('Hello', sum);
  myHigherOrderFunction('Halo lagi', (a, b) => a - b);
}


void closure() {
  // dependent with functional.dart
  var example = calculate(3);
  example();
  example();
}


void future() {
  // dependent with future.dart
  getOrder().then((value) => print('Your ordered: $value'))
  .catchError((err) => print('Sorry, $err'))
  .whenComplete(() => print('Thank you'));
  print('Get your order..');
}


void asyncAwait() async {
  // dependent with future.dart
  print('Get your order..');
  try {
    var order = await getOrder();
    print('Your order: $order');
  } catch(err) {
    print('Sorry, $err');
  } finally {
    print('Thank you');
  }
}

void effectiveDart() {
  // Guidelines dari Effective Dart dibagi menjadi empat bagian sesuai dengan fungsinya.

  // Style guide. Mendefinisikan aturan untuk meletakkan dan mengatur kode. Panduan ini juga menentukan bagaimana format penamaan sebuah identifier, apakah menggunakan camelCase, _underscore, dll.
  // Documentation guide. Panduan ini terkait tentang apa yang boleh dan tidak ada di dalam komentar. Baik itu komentar dokumentasi atau komentar biasa.
  // Usage guide. Panduan ini mengajarkan bagaimana memanfaatkan fitur bahasa secara terbaik untuk menerapkan perilaku. Penggunaan statement atau expression akan dibahas di sini.
  // Design guide. Ini adalah panduan dengan cakupan terluas namun paling tidak mengikat. Panduan ini mencakup bagaimana mendesain API library yang konsisten dan bisa digunakan.



  // Rules. Lima kata kunci tersebut, antara lain:
  //
  // DO. Ketika aturan diawali dengan DO maka praktik tersebut harus selalu diikuti.
  // DON’T. Sebaliknya, aturan yang diawali dengan DON’T bukan merupakan hal yang baik untuk diterapkan.
  // PREFER. Ini adalah praktik yang harus diikuti. Namun, mungkin ada keadaan di mana lebih masuk akal untuk melakukan sebaliknya. Pastikan Anda memahami konsekuensi ketika Anda mengabaikan aturan ini.
  // AVOID. Ini adalah kebalikan dari PREFER. Panduan ini menjelaskan hal-hal yang tidak boleh dilakukan, namun kemungkinan ada alasan bagus untuk melakukannya pada beberapa kejadian.
  // CONSIDER. Panduan ini adalah praktik yang bisa Anda ikuti atau tidak Anda ikuti, tergantung pada keadaan dan preferensi Anda sendiri.

/// ok


}


void main() {
  asyncAwait();
}




