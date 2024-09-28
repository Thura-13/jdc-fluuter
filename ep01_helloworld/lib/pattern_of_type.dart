void main(List<String> args) {
// Collection

  final list = [1, 2, 3, 4];
  final [int fist, int second, int third, int fouth] = list;

  final map = {"width": 22, "height": 24};
  final {"width": int width, "height": int height} = map;

  print(fist);

// Record With No Name

  final dataRecord = (1, 2);
  final (int a, int b) = dataRecord;

// Record With Name

  final withNameRecord = (name: 'Thura', age: 25);
  final (name: String name, age: int age) = withNameRecord;
  print(name);
  print(age);

// Custom Object
  final person = Person('Mg Mg', 22);
  final Person(name: String s, age: int n) = person;
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
