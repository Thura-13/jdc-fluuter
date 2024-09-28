class Student {
  String? name;
  int? age;

  Student(this.name, this.age);

  Student.Basic()
      : name = 'Mg Mg',
        age = 21;
}

void main(List<String> args) {
  var s = Student.Basic();
  var st = Student('Min Min', 31);
  print('Name : ${st.name}, Age : ${st.age}');
  print('Name : ${s.name} ,Age : ${s.age}');
}
