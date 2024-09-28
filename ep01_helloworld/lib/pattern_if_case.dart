class Person {
  int id;
  String name;

  Person({required this.id, required this.name});

  @override
  String toString() => "Person(id:$id, name:$name)";

  Person? getPerson(dynamic input) {
    if (input case [int id, String name]) return Person(id: id, name: name);
    if (input case (int id, String name)) return Person(id: id, name: name);
    if (input case (id: int id, name: String name)) {
      return Person(id: id, name: name);
    }
    return null;
  }

  Person? getPersonWithOperator(dynamic input) {
    if (input
        case [int id, String name] ||
            (int id, String name) ||
            (id: int id, name: String name)) return Person(id: id, name: name);

    return null;
  }
}

Person? getPersonWithSwitch(dynamic input) => switch (input) {
      [int id, String name] ||
      (int id, String name) ||
      (id: int id, name: String name) =>
        Person(id: id, name: name),
      _ => null
    };
void main(List<String> args) {
  show([1, 'Aung Aung'], 'Get Person With List');
  show((1, 'Aung Aung'), 'Get Person With Record No Name');
  show((id: 1, name: 'Aung Aung'), 'Get Person With Record Name');
}

void show(dynamic input, String title) {
  print(title);
  print(input);
}
