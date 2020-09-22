import 'analyzer.dart';
import 'index.dart';

class DartEnum {
  DartEnum();

  factory DartEnum.fromNode(EnumDeclarationImpl root) {
    final base = DartEnum();
    base.name = root.name.toString();
    base.values = root.constants.map((e) => e.name.toString()).toList();
    return base;
  }

  String name;
  List<String> values;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'values': values,
    };
  }
}
