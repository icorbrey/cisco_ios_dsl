import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/ipv4_pool/ipv4_pool_scope.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';
import 'package:cisco_ios_dsl/src/util/scope.dart';

/// The IPv4 DHCP configurator for the Configuration scope.
class ConfigurationIpv4Dhcp {

  /// The device being configured.
  final Device device;

  ConfigurationIpv4Dhcp(this.device);

  /// Configures DHCP pool [name] using [body].
  void pool(String name, void Function(IPv4PoolScope x) body) => device
    ..comment('Configure DHCP pool "$name"')
    ..useScope(Scope.dhcp(), 'ip dhcp pool $name', body);

  /// Excludes addresses [start] through [end] from being allocated.
  void excludeAddresses(IPv4 start, IPv4 end) => device
    ..comment('Exclude "${start.ip}-${end.ip}" from DHCP allocation')
    ..run('ip dhcp excluded-address ${start.ip} ${end.ip}');
}
