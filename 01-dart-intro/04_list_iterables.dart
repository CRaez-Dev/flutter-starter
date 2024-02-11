void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List ${numbers}');
  print('Length ${numbers.length}');
  print('Index:0 ${numbers[0]}');
  print('First ${numbers.first}');
  print('Last ${numbers.last}');
  print('Reverse ${numbers.reversed}');

  final reverseNumbers = numbers.reversed;
  print('Iterable ${reverseNumbers}');
  print('List ${reverseNumbers.toList()}');
  print('Set ${reverseNumbers.toSet()}');

  final numberGreaterThan5 = numbers.where((element) {
    return element > 5;
  });

  print('numberGreaterThan5 ${numberGreaterThan5}');
  print('numberGreaterThan5 Set ${numberGreaterThan5.toSet()}');
}
