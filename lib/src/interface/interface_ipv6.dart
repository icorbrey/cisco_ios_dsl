import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv6.dart';

class InterfaceIpv6 {

  final Device device;

  InterfaceIpv6(this.device);

  void addGateway(IPv6 gateway) => device
    ..run(gateway.cidr != -1
      ? 'ipv6 address ${gateway.ip}/${gateway.cidr}'
			: 'ipv6 address ${gateway.ip}');

  void enable() => device
    ..run('ipv6 enable');

  void enableDhcpConsumer() => device
    ..run('ipv6 address dhcp');

  void enableDhcpProvider() => device
    ..run('ipv6 nd managed-config-flag');

  void forceStatefulDhcp(IPv6 prefix) => device
    ..run('ipv6 nd prefix ${prefix.ip}/${prefix.cidr} 14400 14400 no-autoconfig');

	void removeGateway(IPv6 gateway) => device
		..run('no ipv6 address ${gateway.ip}/${gateway.cidr}');

  void setDhcpServer(String name) => device
    ..run('ipv6 dhcp server $name');
}
