import 'package:cisco_ios_dsl/src/device.dart';

/// The access mode configurator for the Interface scope.
class InterfaceSwitchportAccess {

  /// The device being configured.
  final Device device;

  InterfaceSwitchportAccess(this.device);

  /// Sets this interface to access mode.
  void enable() => device
    ..comment('Set this interface to access mode')
    ..run('switchport mode access');
  
  /// Sets the allowed [vlan] for this interface.
  void setVlan(int vlan) => device
    ..comment('Allow VLAN $vlan for this interface')
    ..run('switchport access vlan $vlan');
}
