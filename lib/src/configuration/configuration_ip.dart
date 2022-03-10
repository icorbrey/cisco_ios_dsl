import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';
import 'package:cisco_ios_dsl/src/util/toggleable_property.dart';

class ConfigurationIp {

  final Device device;

  ConfigurationIp(Device _device)
    : device = _device,
      ssh = ToggleableProperty(_device, 'ip ssh version 2', 'no ip ssh'),
      routing = ToggleableProperty(_device, 'ip routing', 'no ip routing'),
      dnsLookup = ToggleableProperty(_device, 'ip domain-lookup', 'no ip domain-lookup');

  final ToggleableProperty ssh;
  final ToggleableProperty routing;
  final ToggleableProperty dnsLookup;

  void setDomainName(String domain) => device
    ..run('ip domain-name $domain');

  void setDefaultGateway(IPv4 ipv4) => device
    ..run('ip default-gateway ${ipv4.ip}');
}
