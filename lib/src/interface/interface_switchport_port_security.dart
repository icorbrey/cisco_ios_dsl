import 'package:cisco_ios_dsl/src/device.dart';

class InterfaceSwitchportPortSecurity {

  final Device device;

  InterfaceSwitchportPortSecurity(this.device);

  void enable() => device
    ..run('switchport port-security');

  void setMaxDevices(int max) => device
    ..run('switchport port-security maximum $max');

  void rememberMacAddresses() => device
    ..run('switchport port-security mac-address sticky');

  void logViolations() => device
    ..run('switchport port-security violation restrict');
}
