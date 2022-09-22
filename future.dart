Future<int> myFuture() {
  return Future(() {
    print('Creating the future');
    return 12;
  });
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 2), () {
    bool jikaAda = true;
    return (jikaAda) ? 'Coffe Kapal Api' : throw 'Our stock is not enough';

  });
}

// Future<String> fetchUsername() {
//   return Future.delayed(Duration(seconds: 3), () => 'DartUser');
// }