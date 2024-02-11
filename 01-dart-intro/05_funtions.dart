void main() {
  print('greetEveryone: ${greetEveryone()}');
  print('greetEveryone2: ${greetEveryone2()}');
  print('addTwoNumbers ${addTwoNumbers(15, 10)}');
  print('addTwoNumbersOptional ${addTwoNumbersOptional(15)}');

  print('greetPerson: ${greetPerson(name: 'Carlos',message: 'Eres genial')}');
}

String greetEveryone() {
  return 'Hello everyone';
}

String greetEveryone2() => 'Hello everyone 2';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int? b = 0]) {
  b = b ?? 0;
  //b ??= 0;
  return a + b;
}

String greetPerson({required String name, String? message = 'Hola, '}) {
  return '$message $name';
}
