import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';

/// The IPv4 DHCP pool scope.
class IPv4PoolScope {

  /// The device being configured.
  final Device device;

  IPv4PoolScope(this.device);

  /// Sets the network [address] for this DHCP pool.
  void setNetworkAddress(IPv4 address) => device
    ..comment('Set the network address for this DHCP pool')
    ..run('network ${address.ip} ${address.mask}');

  /// Sets the default [router] for this DHCP pool.
  void setDefaultRouter(IPv4 router) => device
    ..comment('Set the default router for this DHCP pool')
    ..run('default-router ${router.ip}');

  /// Sets the DNS [server] for this DHCP pool.
  void setDnsServer(IPv4 server) => device
    ..comment('Set the DNS server for this DHCP pool')
    ..run('dns-server ${server.ip}');
}
