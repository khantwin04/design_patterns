/*

Iterator Pattern: 
This pattern is used to provide a standard way to iterate over a collection, 
allowing access to a collection's objects without exposing its underlying structure.

*/

abstract class Iterator {
  bool hasNext();
  dynamic next();
}

abstract class Container {
  Iterator getIterator();
}

class NameIterator implements Iterator {
  List<String> names;
  int index = 0;

  NameIterator(this.names);

  bool hasNext() {
    if (index < names.length) {
      return true;
    }
    return false;
  }

  dynamic next() {
    if (this.hasNext()) {
      return names[index++];
    }
    return null;
  }
}

class NameRepository implements Container {
  List<String> names = ["Robert", "John", "Julie", "Lora"];

  Iterator getIterator() {
    return NameIterator(names);
  }
}

void main() {
  var namesRepository = NameRepository();
  var iter = namesRepository.getIterator();

  while (iter.hasNext()) {
    String name = iter.next();
    print("Name : $name");
  }
}
