/* 
Command Pattern: 
This pattern is helpful when you want to issue requests to objects 
without knowing anything about the operation being requested or 
the receiver of the request. Commands encapsulate all the information needed to call a method later.

*/

abstract class Order {
  void execute();
}

class BuyOrder implements Order {
  String product;

  BuyOrder(this.product);

  void execute() {
    print("Buying product: $product");
  }
}

class SellOrder implements Order {
  String product;

  SellOrder(this.product);

  void execute() {
    print("Selling product: $product");
  }
}

class Broker {
  List<Order> orderList = [];

  void takeOrder(Order order) {
    orderList.add(order);
  }

  void placeOrders() {
    for (var order in orderList) {
      order.execute();
    }
    orderList.clear();
  }
}

void main() {
  var buyOrder = BuyOrder("Phone");
  var sellOrder = SellOrder("Laptop");

  var broker = Broker();
  broker.takeOrder(buyOrder);
  broker.takeOrder(sellOrder);

  broker.placeOrders(); // prints: Buying product: Phone
  //         Selling product: Laptop
}
