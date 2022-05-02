import 'package:cisco_ios_dsl/src/device.dart';

/// The login configurator for the Line scope.
class LineLogin {

  /// The device being configured.
  final Device device;

  LineLogin(this.device);

  /// Enables login on this line.
  void enable() => device
    ..comment('Enable line login')
    ..run('login');

  /// Disables login on this line.
  void disable() => device
    ..comment('Disable line login')
    ..run('no login');

  /// Sets line's login [type]
  void setType(String type) => device
    ..comment('Set line login type to "$type"')
    ..run('login $type');
}
