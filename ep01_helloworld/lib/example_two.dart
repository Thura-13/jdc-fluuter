void main(List<String> args) {
  var p = Person(firstName: 'Aung', lastName: 'Aung');
  print(getFullName(p));
}

String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final firstName;

  @override
  final lastName;

  Person({required this.firstName, required this.lastName});
}
