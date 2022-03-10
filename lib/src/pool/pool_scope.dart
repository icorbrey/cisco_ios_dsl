import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';

class PoolScope {

  final Device device;

  PoolScope(this.device);

  void setNetworkAddress(IPv4 address) => device
    ..run('network ${address.ip} ${address.mask}');

  void setDefaultRouter(IPv4 router) => device
    ..run('default-router ${router.ip}');

  void setDnsServer(IPv4 server) => device
    ..run('dns-server ${server.ip}');
}
