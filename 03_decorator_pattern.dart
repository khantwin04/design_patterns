/*
Decorator Pattern: 
Use this when you need to assign extra responsibilities to objects at runtime 
without affecting other objects. 
This pattern provides a flexible alternative to subclassing for extending functionality.

*/

abstract class Pizza {
  String get description;
  double get cost;
}

class PlainPizza implements Pizza {
  String get description => "Plain Pizza";
  double get cost => 5.0;
}

class CheeseDecorator implements Pizza {
  Pizza pizza;

  CheeseDecorator(this.pizza);

  String get description => "${pizza.description}, Cheese";
  double get cost => pizza.cost + 2.0;
}

class PepperoniDecorator implements Pizza {
  Pizza pizza;

  PepperoniDecorator(this.pizza);

  String get description => "${pizza.description}, Pepperoni";
  double get cost => pizza.cost + 3.0;
}

void main() {
  Pizza pizza = PlainPizza();
  print("${pizza.description} costs \$${pizza.cost}");

  pizza = CheeseDecorator(pizza);
  print("${pizza.description} costs \$${pizza.cost}");

  pizza = PepperoniDecorator(pizza);
  print("${pizza.description} costs \$${pizza.cost}");
}
