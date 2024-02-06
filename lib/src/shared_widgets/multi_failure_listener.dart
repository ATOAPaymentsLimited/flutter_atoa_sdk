import 'package:nested/nested.dart';

class MultiFailureListener extends Nested {
  MultiFailureListener({
    required List<SingleChildWidget> listeners,
    super.key,
    super.child,
  }) : super(children: listeners);
}
