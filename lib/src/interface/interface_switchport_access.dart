import 'package:cisco_ios_dsl/src/device.dart';

class InterfaceSwitchportAccess {

  final Device device;

  InterfaceSwitchportAccess(this.device);

  void enable() => device
    ..run('switchport mode access');
  
  void setVlan(int vlan) => device
    ..run('switchport access vlan $vlan');
}
