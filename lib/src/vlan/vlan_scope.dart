import 'package:cisco_ios_dsl/src/device.dart';

/// The VLAN scope.
class VlanScope {

  /// The device being configured.
  final Device device;

  VlanScope(this.device);

  /// Set the [name] for this VLAN.
  void setName(String name) => device
    ..comment('Set the name for this VLAN')
    ..run('name $name');
}
