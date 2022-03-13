import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';
import 'package:cisco_ios_dsl/src/util/toggleable_property.dart';

class InterfaceIp {

  final Device device;
  final ToggleableProperty dhcp;

  InterfaceIp(this.device)
    : dhcp = ToggleableProperty(device, 'ip address dhcp', 'no ip address dhcp');

  void setGateway(IPv4 gateway) => device
    ..run('ip address ${gateway.ip} ${gateway.mask}');

  void setHelperAddress(IPv4 helper) => device
    ..run('ip helper-address ${helper.ip}');
}
