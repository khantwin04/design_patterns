/* 
Singleton Pattern: 
Use this pattern when you want to ensure that a class only has one instance,
and you need to provide a global point of access to it.

*/

class President {
  static final President _instance = President._internal();
  String name = 'Mr. President';

  factory President() {
    return _instance;
  }

  President._internal();
}

void main() {
  var president1 = President();
  print(president1.name);

  var president2 = President();
  print(president2.name);

  print(identical(president1, president2)); // prints: true
}
