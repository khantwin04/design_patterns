/*
Adapter Pattern: 
This pattern helps you make two incompatible interfaces compatible 
without changing their existing code. It's often used 
when the classes you need to use have incompatible interfaces.
*/

class EuropeanPlug {
  String provideElectricity() => "Providing 220V";
}

class USPlug {
  String supplyPower() => "Supplying 110V";
}

class Adapter {
  USPlug usPlug;

  Adapter(this.usPlug);

  String provideElectricity() {
    return usPlug.supplyPower();
  }
}

void main() {
  var usPlug = USPlug();
  var adapter = Adapter(usPlug);

  var europeanPlug = EuropeanPlug();
  print(europeanPlug.provideElectricity()); // prints: Providing 220V
  print(adapter.provideElectricity()); // prints: Supplying 110V
}
