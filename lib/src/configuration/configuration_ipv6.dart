import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv6.dart';
import 'package:cisco_ios_dsl/src/util/toggleable_property.dart';

class ConfigurationIpv6 {

  final Device device;
  final ToggleableProperty routing;

  ConfigurationIpv6(this.device)
    : routing = ToggleableProperty(device, 'ipv6 unicast-routing', 'no ipv6 unicast-routing');

  void setDefaultRoute(IPv6 route, String interface) => device
    ..run('ip route ${route.ip}/${route.cidr} $interface');
}
