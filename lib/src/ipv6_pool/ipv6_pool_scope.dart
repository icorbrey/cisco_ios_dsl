import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv6.dart';

class IPv6PoolScope {

  final Device device;

  IPv6PoolScope(this.device);

  void setAddressPrefix(IPv6 prefix) => device
    ..run('address prefix ${prefix.ip}/${prefix.cidr}');

  void setDomainName(String domain) => device
    ..run('domain-name $domain');

  void setDnsServer(IPv6 server) => device
    ..run('dns-server ${server.ip}');
}
