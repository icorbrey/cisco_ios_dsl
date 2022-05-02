import 'package:cisco_ios_dsl/src/device.dart';

/// The switchport configurator for the Interface scope.
class InterfaceSwitchportTrunk {

  /// The device being configured.
  final Device device;

  InterfaceSwitchportTrunk(this.device);

  /// Sets this interface to trunk mode.
  void enable() => device
    ..comment('Set this interface to trunk mode')
    ..run('switchport mode trunk');

  /// Sets the native VLANs for this interface.
  void setNativeVlans(List<int> vlans) => device
    ..comment('Set the list of native VLANs')
    ..run('switchport trunk native vlan ${vlans.join(',')}');
  
  /// Sets the allowed VLANs for this interface.
  void setAllowedVlans(List<int> vlans) => device
    ..comment('Set the list of allowed VLANs')
    ..run('switchport trunk allowed vlan ${vlans.join(',')}');

  /// Enable encapsulation for this interface.
  void encapsulate() => device
    ..comment('Enable encapsulation for this interface')
    ..run('switchport trunk encapsulation dot1q');

  /// Disable dynamic trunk protocol (DTP) for this interface.
  void disableDtp() => device
    ..comment('Disable dynamic trunk protocol (DTP)')
    ..run('switchport nonegotiate');
}
