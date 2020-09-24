# Dart/Flutter AST Generator

Parse a Dart or Flutter file and return a opinionated AST for use to create a dynamic widget or runtime. Works in a browser or native at runtime.

You can pass an input as a file or directory:
```
$ dart ./bin/generator.dart -p samples/example.dart

$ dart ./bin/generator.dart -p samples    
```

Or you can call the method directly:
```dart
final DartResult result = parseSource("Dart Code Here");
print(result.toJson());
```

## Features

- ✅  Classes
- ✅  Enums
- ✅  Logic Tree
- ✅  Flutter Support
- ✅  Top Level Methods and Variables
- ✅  Methods
- ✅  Fields
- ✅  Constructors

## Example

Here is a sample input:
```dart
import 'package:flutter/material.dart';

enum MyEnum { one, type, three }

const int kGlobalField = 1;

/// This is a doc comment
class MyScreen extends StatelessWidget {
  const MyScreen(this.position, {Key key, this.myField = false, this.mySecondField = 1, 
  this.numField = 3,
  this.mapField = const {},
  this.dateField,
  this.listField  = const [],
  }) : super(key: key);

  const MyScreen.alt(this.position, {Key key, this.mySecondField = double.infinity,
  this.numField = 3,
  this.mapField = const {},
  this.listField  = const [],
  this.dateField,
  }) :  this.myField = true,  super(key: key);

  static const String routeName = '/my_route';

  final bool myField;
  final double mySecondField;
  final num numField;
  final Map mapField;
  final DateTime dateField;
  final List listField;

  final int position;

  // This is a normal comment
  Map<String, dynamic> toJson() {
    return {};
  }

  @override
  Widget build(BuildContext context) {
    if (myField) {
      return mySecondField == 1 ? Container(color: Colors.red) : Container(color: Colors.blue);
    }
    return Container(
      color: Colors.red,
      width: 20,
      child: Center(
        child: Builder((context) {
          return Text('Hello World');
        }),
      ),
    );
  }
}

void myGlobalMethod() {

}

// Ignore this simple comment
class Simple {
  String value;
}

```

And that would produce this output:

```json
{
  "file": {
    "name": null,
    "imports": [
      "package:flutter/material.dart"
    ],
    "classes": [
      {
        "name": "MyScreen",
        "comments": [
          "This is a doc comment"
        ],
        "fields": [
          {
            "name": "routeName",
            "type": "String"
          },
          {
            "name": "myField",
            "type": "bool"
          },
          {
            "name": "mySecondField",
            "type": "double"
          },
          {
            "name": "numField",
            "type": "num"
          },
          {
            "name": "mapField",
            "type": "Map"
          },
          {
            "name": "dateField",
            "type": "DateTime"
          },
          {
            "name": "listField",
            "type": "List"
          },
          {
            "name": "position",
            "type": "int"
          }
        ],
        "constructors": [
          {
            "name": "MyScreen",
            "properties": [
              {
                "value": null,
                "name": "key",
                "type": "Key",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": "false",
                "name": "myField",
                "type": "bool",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": "1",
                "name": "mySecondField",
                "type": "double",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": "3",
                "name": "numField",
                "type": "num",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": "const {}",
                "name": "mapField",
                "type": "Map",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": null,
                "name": "dateField",
                "type": "DateTime",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": "const []",
                "name": "listField",
                "type": "List",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              }
            ]
          },
          {
            "name": "alt",
            "properties": [
              {
                "value": null,
                "name": "key",
                "type": "Key",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": null,
                "name": "mySecondField",
                "type": "double",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": "3",
                "name": "numField",
                "type": "num",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": "const {}",
                "name": "mapField",
                "type": "Map",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": "const []",
                "name": "listField",
                "type": "List",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              },
              {
                "value": null,
                "name": "dateField",
                "type": "DateTime",
                "isConst": false,
                "isFinal": false,
                "isNamed": true,
                "isOptional": true,
                "isPositional": false,
                "isRequired": false,
                "isRequiredPositional": false,
                "isSynthetic": false,
                "isRequiredNamed": false,
                "isOptionalNamed": true
              }
            ]
          }
        ],
        "methods": [
          {
            "name": "toJson",
            "body": {
              "name": "method_declaration",
              "values": [
                {
                  "name": "type",
                  "props": {
                    "0": "Map<String, dynamic>"
                  }
                },
                {
                  "name": "declaration",
                  "values": []
                },
                {
                  "name": "block_body",
                  "values": [
                    {
                      "name": "block",
                      "values": [
                        {
                          "name": "return",
                          "values": [
                            {
                              "name": "value",
                              "props": {
                                "0": {
                                  "type": "Map",
                                  "value": "{}"
                                }
                              }
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            "parameters": []
          },
          {
            "name": "build",
            "body": {
              "name": "method_declaration",
              "values": [
                {
                  "name": "type",
                  "props": {
                    "0": "Widget"
                  }
                },
                {
                  "name": "declaration",
                  "values": []
                },
                {
                  "name": "block_body",
                  "values": [
                    {
                      "name": "block",
                      "values": [
                        {
                          "name": "if",
                          "values": [
                            {
                              "name": "name",
                              "props": {
                                "0": "myField"
                              }
                            },
                            {
                              "name": "block",
                              "values": [
                                {
                                  "name": "return",
                                  "values": [
                                    {
                                      "name": "conditional",
                                      "values": [
                                        {
                                          "name": "binary",
                                          "left": {
                                            "name": "name",
                                            "props": {
                                              "0": "mySecondField"
                                            }
                                          },
                                          "right": {
                                            "name": "value",
                                            "props": {
                                              "0": {
                                                "type": "int",
                                                "value": "1"
                                              }
                                            }
                                          },
                                          "operation": "=="
                                        },
                                        {
                                          "name": "constructor",
                                          "value": "Container",
                                          "arguments": {
                                            "color": null
                                          }
                                        },
                                        {
                                          "name": "constructor",
                                          "value": "Container",
                                          "arguments": {
                                            "color": null
                                          }
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        },
                        {
                          "name": "return",
                          "values": [
                            {
                              "name": "constructor",
                              "value": "Container",
                              "arguments": {
                                "color": null,
                                "width": {
                                  "name": "value",
                                  "props": {
                                    "0": {
                                      "type": "int",
                                      "value": "20"
                                    }
                                  }
                                },
                                "child": {
                                  "name": "constructor",
                                  "value": "Center",
                                  "arguments": {
                                    "child": {
                                      "name": "constructor",
                                      "value": "Builder",
                                      "arguments": {}
                                    }
                                  }
                                }
                              }
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            "parameters": []
          }
        ],
        "tree": {
          "name": null,
          "body": {
            "name": "block_body",
            "values": [
              {
                "name": "block",
                "values": [
                  {
                    "name": "if",
                    "values": [
                      {
                        "name": "name",
                        "props": {
                          "0": "myField"
                        }
                      },
                      {
                        "name": "block",
                        "values": [
                          {
                            "name": "return",
                            "values": [
                              {
                                "name": "conditional",
                                "values": [
                                  {
                                    "name": "binary",
                                    "left": {
                                      "name": "name",
                                      "props": {
                                        "0": "mySecondField"
                                      }
                                    },
                                    "right": {
                                      "name": "value",
                                      "props": {
                                        "0": {
                                          "type": "int",
                                          "value": "1"
                                        }
                                      }
                                    },
                                    "operation": "=="
                                  },
                                  {
                                    "name": "constructor",
                                    "value": "Container",
                                    "arguments": {
                                      "color": null
                                    }
                                  },
                                  {
                                    "name": "constructor",
                                    "value": "Container",
                                    "arguments": {
                                      "color": null
                                    }
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  },
                  {
                    "name": "return",
                    "values": [
                      {
                        "name": "constructor",
                        "value": "Container",
                        "arguments": {
                          "color": null,
                          "width": {
                            "name": "value",
                            "props": {
                              "0": {
                                "type": "int",
                                "value": "20"
                              }
                            }
                          },
                          "child": {
                            "name": "constructor",
                            "value": "Center",
                            "arguments": {
                              "child": {
                                "name": "constructor",
                                "value": "Builder",
                                "arguments": {}
                              }
                            }
                          }
                        }
                      }
                    ]
                  }
                ]
              }
            ]
          },
          "parameters": []
        }
      },
      {
        "name": "Simple",
        "comments": [],
        "fields": [
          {
            "name": "value",
            "type": "String"
          }
        ],
        "constructors": [],
        "methods": []
      }
    ],
    "enums": [
      {
        "name": "MyEnum",
        "values": [
          "one",
          "type",
          "three"
        ]
      }
    ],
    "fields": [
      {
        "name": "kGlobalField",
        "type": "int"
      }
    ],
    "methods": [
      {
        "name": "myGlobalMethod",
        "body": {
          "name": "function_declaration",
          "values": [
            {
              "name": "type",
              "props": {
                "0": "void"
              }
            },
            {
              "name": "declaration",
              "values": []
            },
            {
              "name": "function",
              "values": [
                {
                  "name": "block_body",
                  "values": [
                    {
                      "name": "block",
                      "values": []
                    }
                  ]
                }
              ]
            }
          ]
        },
        "parameters": []
      }
    ]
  },
  "errors": []
}
```
