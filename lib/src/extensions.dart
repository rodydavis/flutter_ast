import 'dart:convert';

extension Utils on Object {
  String get description => '${this.runtimeType} -> $this';
  void debug() => print(description);
}

extension MapUtils on Map {
  String prettyPrint() {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    return encoder.convert(this);
  }
}
