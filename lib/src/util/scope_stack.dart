import 'package:cisco_ios_dsl/src/util/scope.dart';

/// A stack that tracks layers of scopes.
class ScopeStack {

  /// The active layers of scopes.
  final List<Scope> _stack;

  /// Creates a scope stack.
  ScopeStack() 
    : _stack = [Scope.root()];

  /// The currently active scope.
  Scope get current => _stack.last;

  /// Adds an active scope to the stack.
  void push(Scope scope) {
    _stack.add(scope);
  }

  /// Removes the active scope from the stack unless it's the root scope.
  void pop() {
    if (1 < _stack.length) {
      _stack.removeLast();
    }
  }
}
