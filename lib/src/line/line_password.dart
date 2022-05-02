import 'package:cisco_ios_dsl/src/device.dart';

/// The password configurator for the Line scope.
class LinePassword {

  /// The device being configured.
  final Device device;

  LinePassword(this.device);

  /// Disables the password for this line.
  void disable() => device
    ..comment('Disable the password for this line')
    ..run('no password');

  /// Sets the [password] for this line.
  void enable(String password) => device
    ..comment('Set this line\'s password')
    ..run('password $password');
}
