import 'person.dart';

void main() {
  final person = GreetingPerson('Ali', 'Hussian');
  person.sayHi();
}

// GreetingPerson can access _firstName and _lastName because it is part of the same library as Person