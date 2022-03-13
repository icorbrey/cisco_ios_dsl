import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/ipv4_pool/ipv4_pool_scope.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';
import 'package:cisco_ios_dsl/src/util/scope.dart';

class ConfigurationIpDhcp {

  final Device device;
  ConfigurationIpDhcp(this.device);

  void pool(String name, void Function(IPv4PoolScope x) body) => device
    ..useScope(Scope.dhcp(), 'ip dhcp pool $name', body);

  void excludeAddresses(IPv4 start, IPv4 end) => device
    ..run('ip dhcp excluded-address ${start.ip} ${end.ip}');
}
