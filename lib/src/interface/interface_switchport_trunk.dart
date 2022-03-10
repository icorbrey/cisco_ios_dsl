import 'package:cisco_ios_dsl/src/device.dart';

class InterfaceSwitchportTrunk {

  final Device device;

  InterfaceSwitchportTrunk(this.device);

  void enable() => device
    ..run('switchport mode trunk');

  void setNativeVlans(List<int> vlans) => device
    ..run('switchport trunk native vlan ${vlans.join(' ')}');
  
  void setAllowedVlans(List<int> vlans) => device
    ..run('switchport trunk allowed vlan ${vlans.join(' ')}');

  void encapsulate() => device
    ..run('switchport trunk encapsulation dot1q');
}
