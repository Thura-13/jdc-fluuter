void main(List<String> args) {
  Human().canRun();
}

class Has2Feet {
  const Has2Feet();
}

mixin HasRum on Has2Feet {
  void canRun() {
    print("$runtimeType is Running");
  }
}

class Human extends Has2Feet with HasRum {}

class HasNoFeet {
  const HasNoFeet();
}


