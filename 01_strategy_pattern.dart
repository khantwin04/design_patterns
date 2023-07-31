/*

Strategy Pattern: 
Use this pattern when you want to decide at runtime which algorithm or behavior should be executed. 
It's also useful when you have several similar classes that only differ in their behavior.

*/
abstract class TravelStrategy {
  void travel();
}

class BusStrategy implements TravelStrategy {
  void travel() {
    print('Traveling by bus');
  }
}

class TrainStrategy implements TravelStrategy {
  void travel() {
    print('Traveling by train');
  }
}

class AirplaneStrategy implements TravelStrategy {
  void travel() {
    print('Traveling by airplane');
  }
}

class Trip {
  TravelStrategy strategy;

  Trip(this.strategy);

  void executeTravel() {
    strategy.travel();
  }
}

void main() {
  var tripByBus = Trip(BusStrategy());
  tripByBus.executeTravel(); // prints: Traveling by bus

  var tripByTrain = Trip(TrainStrategy());
  tripByTrain.executeTravel(); // prints: Traveling by train

  var tripByAirplane = Trip(AirplaneStrategy());
  tripByAirplane.executeTravel(); // prints: Traveling by airplane
}
