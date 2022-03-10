import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';
import 'package:cisco_ios_dsl/src/util/toggleable_property.dart';

class ConfigurationIp {

  final Device device;
  final ToggleableProperty ssh;
  final ToggleableProperty routing;
  final ToggleableProperty dnsLookup;
  
  ConfigurationIp(this.device)
    : ssh = ToggleableProperty(device, 'ip ssh version 2', 'no ip ssh'),
      routing = ToggleableProperty(device, 'ip routing', 'no ip routing'),
      dnsLookup = ToggleableProperty(device, 'ip domain-lookup', 'no ip domain-lookup');

  void setDomainName(String domain) => device
    ..run('ip domain-name $domain');

  void setDefaultGateway(IPv4 ipv4) => device
    ..run('ip default-gateway ${ipv4.ip}');
}
