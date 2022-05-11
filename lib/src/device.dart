import 'package:cisco_ios_dsl/src/priviledged/priviledged_scope.dart';
import 'package:cisco_ios_dsl/src/util/activator.dart';
import 'package:cisco_ios_dsl/src/util/scope_stack.dart';

import 'util/scope.dart';

/// A Cisco IOS device.
class Device {

  /// The device's scope controller.
  final scope = ScopeStack();

  /// Whether this device should emulate a terminal or be scriptable.
  final bool _isScript;

  /// Whether this device should output comments.
  final bool _areCommentsShown;

  /// This device's ID.
  String id;

  /// Creates a Cisco IOS device that emulates a terminal.
  Device(this.id)
    : _isScript = false,
      _areCommentsShown = false;

  /// Creates a Cisco IOS device that emulates a terminal with comments.
  Device.comments(this.id)
    : _isScript = false,
      _areCommentsShown = true;

  /// Creates a Cisco IOS device that is scriptable.
  Device.script(this.id)
    : _isScript = true,
      _areCommentsShown = false;

  /// Creates a Cisco IOS device that is scriptable and shows comments.
  Device.scriptWithComments(this.id)
    : _isScript = true,
      _areCommentsShown = true;

  /// Returns the prompt.
  String _getPrompt() => !_isScript 
    ? '\x1B[36m$id${scope.current.preamble}\x1B[0m '
    : '';

  /// Runs the given command.
  void run(String command) =>
    print(_getPrompt() + command);

  /// Prints the given comment.
  void comment(String message) {
    if (_areCommentsShown) {
      print("\x1B[32m! $message\x1B[0m");
    }
  }

  /// Enters the given scope, runs the body, and exits.
  void useScope<T>(Scope newScope, String command, void Function(T x) body) {
    run(command);
    scope.push(newScope);
    body(Activator.createInstance(T, arguments: [this]));
    run('exit');
    scope.pop();
  }

  /// Enters the device's priviledged scope.
  void enable(void Function(PriviledgedScope x) body) =>
    useScope(Scope.priviledged(), 'enable', body);
}
