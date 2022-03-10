import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';

class ConfigurationIpDhcp {

  final Device device;

  ConfigurationIpDhcp(this.device);

  void excludeAddresses(IPv4 start, IPv4 end) => device
    ..run('ip dhcp excluded-address ${start.ip} ${end.ip}');

  void createPool(String name) => device
    ..run('ip dhcp pool $name');
}
