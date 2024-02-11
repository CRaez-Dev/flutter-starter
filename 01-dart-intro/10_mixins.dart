class Animal {}

class Mammal extends Animal {}

class Bird extends Animal {}

class Fish extends Animal {}

mixin class Fly {
  void fly() => print('fly');
}

mixin class Walk {
  void walk() => print('Walk');
}

mixin class Swim {
  void swim() => print('Swim');
}

class Dolphin extends Mammal with Swim {}

class Bat extends Mammal with Fly, Walk {}

class Cat extends Mammal with Walk {}

class Dove extends Bird with Walk, Fly {}

class Duck extends Bird with Fly, Walk, Swim {}

class Shark extends Fish with Swim {}

class FlyingFish extends Fish with Fly, Swim {}


void main() {

final flipper = Dolphin();
flipper.swim();


final batman = Bat();
batman.walk();
batman.fly();

final namor = FlyingFish();
namor.swim();
namor.fly();

}