/*

Factory Method Pattern: 
This is used when you want to delegate the responsibility of instantiating an object to child classes.

 */

abstract class Animal {
  String get sound;
}

class Dog implements Animal {
  String get sound => "Woof";
}

class Cat implements Animal {
  String get sound => "Meow";
}

abstract class AnimalFactory {
  Animal createAnimal();
}

class DogFactory implements AnimalFactory {
  Animal createAnimal() => Dog();
}

class CatFactory implements AnimalFactory {
  Animal createAnimal() => Cat();
}

void main() {
  AnimalFactory dogFactory = DogFactory();
  Animal dog = dogFactory.createAnimal();
  print("The dog says: ${dog.sound}");

  AnimalFactory catFactory = CatFactory();
  Animal cat = catFactory.createAnimal();
  print("The cat says: ${cat.sound}");
}
