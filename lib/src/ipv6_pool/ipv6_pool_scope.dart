import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv6.dart';

/// The IPv4 DHCP pool scope.
class IPv6PoolScope {

  /// The device being configured.
  final Device device;

  IPv6PoolScope(this.device);

  /// Sets the address [prefix] for this DHCP pool.
  void setAddressPrefix(IPv6 prefix) => device
    ..comment('Set the address prefix for this DHCP pool')
    ..run('address prefix ${prefix.ip}/${prefix.cidr}');

  /// Sets the [domain] name for this DHCP pool.
  void setDomainName(String domain) => device
    ..comment('Set the default router for this DHCP pool')
    ..run('domain-name $domain');

  /// Sets the DNS [server] for this DHCP pool.
  void setDnsServer(IPv6 server) => device
    ..comment('Set the DNS server for this DHCP pool')
    ..run('dns-server ${server.ip}');
}
