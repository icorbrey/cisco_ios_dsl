import 'package:cisco_ios_dsl/src/configuration/configuration_ipv6_dhcp.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_ipv6_routing.dart';
import 'package:cisco_ios_dsl/src/device.dart';

/// The IPv6 configurator for the Configuration scope.
class ConfigurationIpv6 {

  /// The device being configured.
  final Device device;

  /// The DHCP configurator.
  final ConfigurationIpv6Dhcp dhcp;

  /// The routing configurator.
  final ConfigurationIpv6Routing routing;

  ConfigurationIpv6(this.device)
    : dhcp = ConfigurationIpv6Dhcp(device),
      routing = ConfigurationIpv6Routing(device);
}
