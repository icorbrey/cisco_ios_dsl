import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv6.dart';

class InterfaceIpV6 {

  final Device device;

  InterfaceIpV6(this.device);

  void addGateway(IPv6 gateway) => device
    ..run(gateway.cidr != -1
      ? 'ipv6 address ${gateway.ip}/${gateway.cidr}'
			: 'ipv6 address ${gateway.ip}');

	void removeGateway(IPv6 gateway) => device
		..run('no ipv6 address ${gateway.ip}/${gateway.cidr}');
}
