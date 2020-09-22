import 'dart:convert';

extension Utils on Object {
  void debug() => print('${this.runtimeType} -> $this');
}

extension MapUtils on Map {
  String prettyPrint() {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    return encoder.convert(this);
  }
}
