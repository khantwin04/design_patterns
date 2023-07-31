/*
Composite Pattern: 
This pattern should be used when you want to compose objects 
into tree structures to represent part-whole hierarchies. 
It allows clients to treat individual objects and compositions of objects uniformly.
 

*/

abstract class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void printDetails();
}

class Developer extends Employee {
  Developer(String name, double salary) : super(name, salary);

  void printDetails() {
    print('Name: $name');
    print('Salary: $salary');
  }
}

class Manager extends Employee {
  List<Employee> employees = [];

  Manager(String name, double salary) : super(name, salary);

  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  void removeEmployee(Employee employee) {
    employees.remove(employee);
  }

  void printDetails() {
    print('Name: $name');
    print('Salary: $salary');
    employees.forEach((employee) {
      employee.printDetails();
    });
  }
}

void main() {
  Employee john = Developer('John Doe', 12000);
  Employee jane = Developer('Jane Doe', 15000);

  Manager manager = Manager('Manager', 25000);
  manager.addEmployee(john);
  manager.addEmployee(jane);

  manager.printDetails();
}
