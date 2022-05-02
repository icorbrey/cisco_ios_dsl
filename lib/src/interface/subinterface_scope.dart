import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_scope.dart';

/// The Subinterface scope.
class SubinterfaceScope extends InterfaceScope {

  SubinterfaceScope(Device device)
    : super(device);

  /// Encapsulates [vlan] under this subinterface.
  void encapsulateVlan(int vlan) => device
    ..comment('Encapsulate VLAN $vlan')
    ..run('encapsulation dot1q $vlan');

  /// Encapsulates native [vlan] under this subinterface.
  void encapsulateNativeVlan(int vlan) => device
    ..comment('Encapsulate native VLAN $vlan')
    ..run('encapsulation dot1q $vlan native');

  /// Removes all VLAN encapsulations on this subinterface.
  void removeVlanEncapsulation() => device
    ..comment('Remove all encapsulations')
    ..run('no encapsulation dot1q');
}
