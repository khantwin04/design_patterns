/* 
Template Method Pattern: 
This is useful when you need to create a group of subclasses 
that have to execute a similar group of methods. 
You can define the methods in a template method in an abstract class and let subclasses implement additional operations.

*/

abstract class AbstractGame {
  void play() {
    initialize();
    startPlay();
    endPlay();
  }

  void initialize();
  void startPlay();
  void endPlay();
}

class Cricket extends AbstractGame {
  void initialize() {
    print("Cricket Game Initialized! Start playing.");
  }

  void startPlay() {
    print("Cricket Game Started. Enjoy the game!");
  }

  void endPlay() {
    print("Cricket Game Finished!");
  }
}

class Football extends AbstractGame {
  void initialize() {
    print("Football Game Initialized! Start playing.");
  }

  void startPlay() {
    print("Football Game Started. Enjoy the game!");
  }

  void endPlay() {
    print("Football Game Finished!");
  }
}

void main() {
  AbstractGame game = Cricket();
  game.play(); // prints: Cricket Game Initialized! Start playing.
  //         Cricket Game Started. Enjoy the game!
  //         Cricket Game Finished!

  print('');

  game = Football();
  game.play(); // prints: Football Game Initialized! Start playing.
  //         Football Game Started. Enjoy the game!
  //         Football Game Finished!
}
