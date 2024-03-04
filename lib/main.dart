import 'package:dart_latest/abstract_interface.dart';
import 'package:dart_latest/base_class_2.dart';
import 'package:dart_latest/final_class.dart';
import 'package:dart_latest/mixin_class.dart';
import 'package:dart_latest/sealed_class.dart';

void main() {
  //Base Class
  Car();
  //final class
  FinalClass();
  // mixin class
  MixinClass().show("mixin class");
  Mixin1().show("Mixin with class");
  // interface
  LoadDataFromFile().fetch();
  //sealed
  final val = SealedExample().exhustiveSwitch(Pen4());
  print("sealedclass $val");
}
