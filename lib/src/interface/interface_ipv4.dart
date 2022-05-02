import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_ipv4_dhcp.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';

/// The IPv4 configurator for the Interface scope.
class InterfaceIpv4 {

  /// The device being configured.
  final Device device;

  /// The DHCP configurator.
  final InterfaceIpv4Dhcp dhcp;

  InterfaceIpv4(this.device)
    : dhcp = InterfaceIpv4Dhcp(device);

  /// Sets the [gateway] for this interface.
  void setGateway(IPv4 gateway) => device
    ..comment('Set gateway to "${gateway.ip} ${gateway.mask}')
    ..run('ip address ${gateway.ip} ${gateway.mask}');

  /// Sets the [helper] address for this interface.
  void setHelperAddress(IPv4 helper) => device
    ..comment('Set helper address to "${helper.ip}"')
    ..run('ip helper-address ${helper.ip}');
}
