/*
Abstract Factory Pattern: 
Use this pattern when a system should be independent from how its products are created, composed, and represented. 
It provides an interface for creating families of related or dependent objects without specifying their concrete classes.

 */

abstract class Chair {
  String get comfortLevel;
}

class WoodenChair implements Chair {
  String get comfortLevel => "Medium";
}

class PlasticChair implements Chair {
  String get comfortLevel => "Low";
}

abstract class Table {
  String get durability;
}

class WoodenTable implements Table {
  String get durability => "High";
}

class PlasticTable implements Table {
  String get durability => "Medium";
}

abstract class FurnitureFactory {
  Chair createChair();
  Table createTable();
}

class WoodenFurnitureFactory implements FurnitureFactory {
  Chair createChair() => WoodenChair();
  Table createTable() => WoodenTable();
}

class PlasticFurnitureFactory implements FurnitureFactory {
  Chair createChair() => PlasticChair();
  Table createTable() => PlasticTable();
}

void main() {
  FurnitureFactory woodenFactory = WoodenFurnitureFactory();
  print(
      "Wooden Chair Comfort Level: ${woodenFactory.createChair().comfortLevel}");
  print("Wooden Table Durability: ${woodenFactory.createTable().durability}");

  FurnitureFactory plasticFactory = PlasticFurnitureFactory();
  print(
      "Plastic Chair Comfort Level: ${plasticFactory.createChair().comfortLevel}");
  print("Plastic Table Durability: ${plasticFactory.createTable().durability}");
}
