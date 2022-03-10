import 'package:cisco_ios_dsl/src/util/activator.dart';
import 'package:cisco_ios_dsl/src/util/scope_stack.dart';

import 'util/scope.dart';

class Device {

  final scope = ScopeStack();
  final bool _script;
  final String id;

  Device(this.id) : _script = false;
  Device.script(this.id) : _script = true;

  String _getPrompt() => !_script 
    ? '\x1B[36m$id${scope.current.preamble}\x1B[0m '
    : '';

  void run(String command) =>
    print(_getPrompt() + command);

  void useScope<T>(Scope newScope, String command, void Function(T x) body) {
    run(command);
    scope.push(newScope);
    body(Activator.createInstance(T, arguments: [this]));
    run('exit');
    scope.pop();
  }
}
