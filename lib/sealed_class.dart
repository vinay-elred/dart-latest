sealed class SealedClass {}

class Pen implements SealedClass {}

class Pen2 implements SealedClass {}

class Pen3 implements SealedClass {}

class Pen4 implements SealedClass {}

class SealedExample {
  String exhustiveSwitch(SealedClass type) {
    return switch (type) {
      Pen() => "Simple pen",
      Pen2() => "Good Pen",
      Pen3() => "Mutli-Pen",
      Pen4() => "Luxuary pen",
    };
  }
}
