// ignore_for_file: unused_field, avoid_print, unused_element

base class BaseClass {
  BaseClass() {
    print("Base Constuctor");
  }
  final int _data = 0;
}

// Not call baseClass as it implements
// implements can be done only in same file
base class Bike implements BaseClass {
  @override
  int get _data => 1;
  
}