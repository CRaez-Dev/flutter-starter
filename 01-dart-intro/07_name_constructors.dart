void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony stark',
    'power': 'Money',
    'isAlive': true
  };

  final Hero ironMan = Hero(
      name: 'Iron Man', power: 'Flight', isAlive: rawJson['isAlive2'] ?? false);
  final Hero tonyStark = Hero.fromJson(rawJson);

  print(ironMan);
  print(ironMan.name);
  print(ironMan.power);

  print(tonyStark);
  print(tonyStark.name);
  print(tonyStark.power);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'Not found',
        power = json['power'] ?? 'Not found',
        isAlive = json['isAlive'] ?? 'Not found';

  @override
  String toString() {
    return '$name, $power ,is alive: ${isAlive ? 'Yes' : 'No'}';
  }
}
