import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_switchport_access.dart';
import 'package:cisco_ios_dsl/src/interface/interface_switchport_port_security.dart';
import 'package:cisco_ios_dsl/src/interface/interface_switchport_trunk.dart';
import 'package:cisco_ios_dsl/src/interface/interface_switchport_voice.dart';

class InterfaceSwitchport {

  final Device device;
  final InterfaceSwitchportTrunk trunk;
  final InterfaceSwitchportVoice voice;
  final InterfaceSwitchportAccess access;
  final InterfaceSwitchportPortSecurity portSecurity;

  InterfaceSwitchport(this.device)
    : trunk = InterfaceSwitchportTrunk(device),
      voice = InterfaceSwitchportVoice(device),
      access = InterfaceSwitchportAccess(device),
      portSecurity = InterfaceSwitchportPortSecurity(device);

  void disable() => device
    ..run('no switchport');
}
