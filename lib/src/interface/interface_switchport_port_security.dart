import 'package:cisco_ios_dsl/src/device.dart';

/// The port security configurator for the Interface scope.
class InterfaceSwitchportPortSecurity {

  /// The device being configured.
  final Device device;

  InterfaceSwitchportPortSecurity(this.device);

  /// Enables port security on this interface.
  void enable() => device
    ..comment('Enable port security')
    ..run('switchport port-security');

  /// Sets the maximum number of devices that are allowed to connect to this
  /// port.
  void setMaxDevices(int max) => device
    ..comment('Limit number of devices to $max')
    ..run('switchport port-security maximum $max');

  /// Makes the interface remember MAC addresses that have connected to it.
  void rememberMacAddresses() => device
    ..comment('Remember MAC addresses')
    ..run('switchport port-security mac-address sticky');

  /// Makes the interface log security violations.
  void logViolations() => device
    ..comment('Log port security violations')
    ..run('switchport port-security violation restrict');
}
