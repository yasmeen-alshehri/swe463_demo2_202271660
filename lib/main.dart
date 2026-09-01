class Animal {
  void makeSound() {
    print('Some generic sound');
  }
}

mixin Swimmer {
  void swim() {
    print('I can swim!');
  }
}

class Dolphin extends Animal with Swimmer {}

class Duck extends Animal with Swimmer {}

void main() {
  final dolphin = Dolphin();
  dolphin.swim();
  dolphin.makeSound();

  final duck = Duck();
  duck.swim();
  duck.makeSound();
}