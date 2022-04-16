import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/ipv6_pool/ipv6_pool_scope.dart';
import 'package:cisco_ios_dsl/src/util/scope.dart';

/// The IPv6 DHCP configurator for the Configuration scope.
class ConfigurationIpv6Dhcp {

  /// The device being configured.
  final Device device;

  ConfigurationIpv6Dhcp(this.device);

  /// Configures DHCP pool [name] using [body].
  void pool(String name, void Function(IPv6PoolScope x) body) => device
    ..comment('Configure DHCP pool "$name"')
    ..useScope(Scope.dhcpv6(), 'ipv6 dhcp pool $name', body);
}
