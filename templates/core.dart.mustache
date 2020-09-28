import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';

@mustCallSuper
class TrackedWidget extends SingleChildRenderObjectWidget {
  TrackedWidget({
    Key key,
    @required Widget child,
    @required this.controller,
  }) : super(key: key, child: child);

  final ValueNotifier<WidgetRect> controller;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return WidgetBaseRenderObject(controller);
  }
}

@immutable
class WidgetRect {
  final double lastDx;
  final double lastDy;
  final double lastDw;
  final double lastDh;

  WidgetRect({
    this.lastDx = 0.0,
    this.lastDy = 0.0,
    this.lastDw = 0.0,
    this.lastDh = 0.0,
  });

  WidgetRect copyWith({
    double lastDx,
    double lastDy,
    double lastDw,
    double lastDh,
  }) {
    return WidgetRect(
      lastDx: lastDx ?? this.lastDx,
      lastDy: lastDy ?? this.lastDy,
      lastDw: lastDw ?? this.lastDw,
      lastDh: lastDh ?? this.lastDh,
    );
  }
}

class WidgetBaseRenderObject extends RenderProxyBox {
  WidgetBaseRenderObject(this.controller);

  final ValueNotifier<WidgetRect> controller;

  @override
  void paint(PaintingContext context, Offset offset) {
    assert(!debugNeedsLayout);
    final current = controller.value;
    controller.value = current.copyWith(lastDx: offset.dx);
    controller.value = current.copyWith(lastDy: offset.dy);
    controller.value = current.copyWith(lastDw: size.width);
    controller.value = current.copyWith(lastDh: size.height);
    super.paint(context, offset);
  }
}


abstract class Core<T> {
  dynamic get data;
  ValueChanged<dynamic> get changed;
  T get fallback;

  T get value;
  set value(T val);

  String get name => data == null ? null : data['name'];
  String get type => data == null ? null : data['type'];

  dynamic toCode();
  dynamic toJson();
}

