void main() {
  //final Hero wolwerine = Hero('Logan', 'Regeneration');
  final Hero wolwerine = Hero(name: 'Logan',power: 'Regeneration');
  print(wolwerine);
  print(wolwerine.name);
  print(wolwerine.power);
}

class Hero {
  String name;
  String power;

  // Hero(String pName, String pPower) {
  //   name = pName;
  //   power = pPower;
  // }

  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  //Hero(this.name,this.power);

  Hero({required this.name, required this.power});

  @override String toString() {    
    return '${name} ${power}';
  }
}
