/* 

Facade Pattern: 
Use this pattern when you want to provide a simplified interface to a complex subsystem. 
This pattern doesn't prevent the subsystem from being used directly, 
it just provides a simplified interface for common functions.

*/

class Oven {
  void on() {
    print('Oven is ON');
  }

  void off() {
    print('Oven is OFF');
  }
}

class Light {
  void on() {
    print('Light is ON');
  }

  void off() {
    print('Light is OFF');
  }
}

class KitchenFacade {
  Oven oven;
  Light light;

  KitchenFacade(this.oven, this.light);

  void prepareKitchen() {
    print('Preparing kitchen...');
    oven.on();
    light.on();
  }

  void closeKitchen() {
    print('Closing kitchen...');
    oven.off();
    light.off();
  }
}

void main() {
  var oven = Oven();
  var light = Light();

  var kitchen = KitchenFacade(oven, light);

  kitchen.prepareKitchen(); // prints: Preparing kitchen...
  //         Oven is ON
  //         Light is ON

  kitchen.closeKitchen(); // prints: Closing kitchen...
  //         Oven is OFF
  //         Light is OFF
}
