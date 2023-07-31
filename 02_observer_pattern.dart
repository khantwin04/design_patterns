/*

Observer Pattern: 
This is a good choice when a change to one object requires changing others, 
and you don't know how many objects need to be changed. 
Essentially, this pattern allows objects to communicate with each other indirectly.

*/

abstract class Observer {
  void update(String videoTitle);
}

class YouTubeChannel {
  late String _latestVideoTitle;
  List<Observer> _subscribers = [];

  void uploadVideo(String videoTitle) {
    _latestVideoTitle = videoTitle;
    _notifySubscribers();
  }

  void _notifySubscribers() {
    for (var subscriber in _subscribers) {
      subscriber.update(_latestVideoTitle);
    }
  }

  void addSubscriber(Observer subscriber) {
    _subscribers.add(subscriber);
  }
}

class Subscriber implements Observer {
  String _name;
  Subscriber(this._name);

  void update(String videoTitle) {
    print('$_name is notified about the new video: $videoTitle');
  }
}

void main() {
  var channel = YouTubeChannel();
  var subscriber1 = Subscriber('Alice');
  var subscriber2 = Subscriber('Bob');

  channel.addSubscriber(subscriber1);
  channel.addSubscriber(subscriber2);

  channel.uploadVideo(
      'Observer Pattern Explained'); // prints: Alice is notified about the new video: Observer Pattern Explained
  //         Bob is notified about the new video: Observer Pattern Explained
}
