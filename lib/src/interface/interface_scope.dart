import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_ether_channel.dart';
import 'package:cisco_ios_dsl/src/interface/interface_hsrp.dart';
import 'package:cisco_ios_dsl/src/interface/interface_ipv4.dart';
import 'package:cisco_ios_dsl/src/interface/interface_ipv6.dart';
import 'package:cisco_ios_dsl/src/interface/interface_spanning_tree.dart';
import 'package:cisco_ios_dsl/src/interface/interface_switchport.dart';

/// The interface scope configurator.
class InterfaceScope {

  /// The device being configured.
  final Device device;

  /// The IPv4 configurator.
  final InterfaceIpv4 ipv4;

  /// The IPv6 configurator.
  final InterfaceIpv6 ipv6;

  /// The HSRP configurator.
  final InterfaceHsrp hsrp;

  /// The switchport configurator.
  final InterfaceSwitchport switchport;

  /// The EtherChannel configurator.
  final InterfaceEtherChannel etherChannel;

  /// The spanning tree configurator.
  final InterfaceSpanningTree spanningTree;

  InterfaceScope(this.device)
    : ipv4 = InterfaceIpv4(device),
      ipv6 = InterfaceIpv6(device),
      hsrp = InterfaceHsrp(device),
      switchport = InterfaceSwitchport(device),
      etherChannel = InterfaceEtherChannel(device),
      spanningTree = InterfaceSpanningTree(device);

  /// Enables this interface.
  void enable() => device
    ..comment('Enable this interface')
    ..run('no shutdown');

  /// Disables this interface.
  void disable() => device
    ..comment('Disable this interface')
    ..run('shutdown');

  /// Sets this interface's [description].
  void setDescription(String description) => device
    ..comment('Set this interface\'s description')
    ..run('description $description');
}
