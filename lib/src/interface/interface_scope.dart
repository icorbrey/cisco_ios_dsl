import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_ether_channel.dart';
import 'package:cisco_ios_dsl/src/interface/interface_ip.dart';
import 'package:cisco_ios_dsl/src/interface/interface_ipv6.dart';
import 'package:cisco_ios_dsl/src/interface/interface_spanning_tree.dart';
import 'package:cisco_ios_dsl/src/interface/interface_switchport.dart';
import 'package:cisco_ios_dsl/src/util/toggleable_property.dart';

class InterfaceScope {

  final Device device;
  final InterfaceIp ip;
  final InterfaceIpV6 ipv6;
  final ToggleableProperty operation;
  final InterfaceSwitchport switchport;
  final InterfaceEtherChannel etherChannel;
  final InterfaceSpanningTree spanningTree;

  InterfaceScope(this.device)
    : ip = InterfaceIp(device),
      ipv6 = InterfaceIpV6(device),
      switchport = InterfaceSwitchport(device),
      etherChannel = InterfaceEtherChannel(device),
      operation = ToggleableProperty(device, 'no shutdown', 'shutdown');

  void setDescription(String description) => device
    ..run('description $description');
}
