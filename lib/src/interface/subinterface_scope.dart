import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_scope.dart';

class SubinterfaceScope extends InterfaceScope {

  SubinterfaceScope(Device device)
    : super(device);

  void encapsulateVlan(int vlan) => device
    ..run('encapsulation dot1q $vlan');

  void encapsulateNativeVlan(int vlan) => device
    ..run('encapsulation dot1q $vlan native');

  void removeVlanEncapsulation() => device
    ..run('no encapsulation dot1q');
}
