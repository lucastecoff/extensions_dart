
extension on List {
  Object get last => reversed.elementAt(0);
  removeFirst() {
    remove(elementAt(0));
  }
}

extension on String {
  bool get isNumeric => num.tryParse(this) != null ? true : false;
}

main() {
  print("1".isNumeric); // true
  print("-1".isNumeric); // true
  print("2.5".isNumeric); // true
  print("-2.5".isNumeric); // true
  print("0x14f".isNumeric); // true
  print("2,5".isNumeric); // false
  print("2a".isNumeric); // false
  
  List dummy = ['Dart', 'Flutter', 'Windows', 'Linux'];
  dummy.removeFirst(); // Dart
  dummy.removeLast(); // Linux
  print(dummy); // [Flutter, Windows]
  print(dummy.first); // Flutter
  print(dummy.last); // Windows
}
