import 'package:cisco_ios_dsl/src/util/scope.dart';

class ScopeStack {

  final List<Scope> _stack;

  ScopeStack() 
    : _stack = [Scope.root()];

  Scope get current => _stack.last;

  void push(Scope scope) {
    _stack.add(scope);
  }

  void pop() {
    if (1 < _stack.length) {
      _stack.removeLast();
    }
  }
}
