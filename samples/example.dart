// //ignore_for_file: uri_does_not_exist,undefined_class,extends_non_class,undefined_named_parameter,undefined_method,undefined_identifier
// import 'package:flutter/material.dart';

// enum MyEnum { one, type, three }

// const int kGlobalField = 1;

// /// This is a doc comment
// class MyScreen extends StatelessWidget {
//   const MyScreen(this.position, {Key key, this.myField = false, this.mySecondField = 1, 
//   this.numField = 3,
//   this.mapField = const {},
//   this.dateField,
//   this.listField  = const [],
//   }) : super(key: key);

//   const MyScreen.alt(this.position, {Key key, this.mySecondField = double.infinity,
//   this.numField = 3,
//   this.mapField = const {},
//   this.listField  = const [],
//   this.dateField,
//   }) :  this.myField = true,  super(key: key);

//   static const String routeName = '/my_route';

//   final bool myField;
//   final double mySecondField;
//   final num numField;
//   final Map mapField;
//   final DateTime dateField;
//   final List listField;

//   final int position;

//   // This is a normal comment
//   Map<String, dynamic> toJson() {
//     return {};
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (myField) {
//       return mySecondField == 1 ? Container(color: Colors.red) : Container(color: Colors.blue);
//     }
//     return Container(
//       color: Colors.red,
//       width: 20,
//       child: Center(
//         child: Builder((context) {
//           return Text('Hello World');
//         }),
//       ),
//     );
//   }
// }

// void myGlobalMethod() {

// }

// // Ignore this simple comment
// class Simple {
//   String value;
// }
