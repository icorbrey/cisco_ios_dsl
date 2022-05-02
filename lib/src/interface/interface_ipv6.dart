import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv6.dart';

/// The IPv6 configurator for the Interface scope.
class InterfaceIpv6 {

  /// The device being configured.
  final Device device;

  InterfaceIpv6(this.device);

  /// Adds the IPv6 [gateway] to this interface.
  void addGateway(IPv6 gateway) {
    var address = gateway.cidr != -1
      ? "${gateway.ip}/${gateway.cidr}"
      : gateway.ip;

    device
      ..comment('Add gateway $address')
      ..run('ipv6 address $address');
  }

  /// Enables IPv6 operation for this interface.
  void enable() => device
    ..comment('Enable IPv6 operation')
    ..run('ipv6 enable');

  /// Sets up this interface as an IPv6 DHCP consumer.
  void enableDhcpConsumer() => device
    ..comment('Set interface as IPv6 DHCP consumer')
    ..run('ipv6 address dhcp');

  /// Sets up this interface as an IPv6 DHCP provider.
  void enableDhcpProvider() => device
    ..comment('Set interface as IPv6 DHCP provider')
    ..run('ipv6 nd managed-config-flag');

  /// Enables SLAAC on this interface.
  void enableSlaac() => device
    ..comment('Enable SLAAC on this interface.')
    ..run('no ipv6 nd managed-config-flag')
    ..run('no ipv6 nd other-config-flag')
    ..run('ipv6 nd prefix default');

  /// Forces stateful IPv6 DHCP on this interface with [prefix].
  void forceStatefulDhcp(IPv6 prefix) => device
    ..comment('Force stateful IPv6 DHCP with prefix ${prefix.ip}/${prefix.cidr}')
    ..run('ipv6 nd prefix ${prefix.ip}/${prefix.cidr} 14400 14400 no-autoconfig');

  /// Removes the IPv6 [gateway] from this interface.
	void removeGateway(IPv6 gateway) => device
    ..comment('Remove gateway ${gateway.ip}/${gateway.cidr}')
		..run('no ipv6 address ${gateway.ip}/${gateway.cidr}');

  /// Sets up this interface as an IPv6 DHCP server with [name]
  void setDhcpServer(String name) => device
    ..comment('Set up this interface as an IPv6 DHCP server with name "$name"')
    ..run('ipv6 dhcp server $name');
}
