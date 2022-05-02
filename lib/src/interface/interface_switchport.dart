import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_switchport_access.dart';
import 'package:cisco_ios_dsl/src/interface/interface_switchport_port_security.dart';
import 'package:cisco_ios_dsl/src/interface/interface_switchport_trunk.dart';
import 'package:cisco_ios_dsl/src/interface/interface_switchport_voice.dart';

/// The switchport configurator for the Interface scope.
class InterfaceSwitchport {

  /// The device being configured.
  final Device device;

  /// The trunk mode configurator.
  final InterfaceSwitchportTrunk trunk;

  /// The voice mode configurator.
  final InterfaceSwitchportVoice voice;

  /// The access mode configurator.
  final InterfaceSwitchportAccess access;

  /// The port security configurator.
  final InterfaceSwitchportPortSecurity portSecurity;

  InterfaceSwitchport(this.device)
    : trunk = InterfaceSwitchportTrunk(device),
      voice = InterfaceSwitchportVoice(device),
      access = InterfaceSwitchportAccess(device),
      portSecurity = InterfaceSwitchportPortSecurity(device);

  /// Disables the switchport for this interface.
  void disable() => device
    ..comment('Disable switchport for this interface')
    ..run('no switchport');
}
