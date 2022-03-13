import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/ipv6_pool/ipv6_pool_scope.dart';
import 'package:cisco_ios_dsl/src/util/scope.dart';

class ConfigurationIpv6Dhcp {

  final Device device;
  ConfigurationIpv6Dhcp(this.device);

  void pool(String name, void Function(IPv6PoolScope x) body) => device
    ..useScope(Scope.dhcpv6(), 'ipv6 dhcp pool $name', body);
}
