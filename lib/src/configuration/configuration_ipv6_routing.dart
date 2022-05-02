import 'package:cisco_ios_dsl/src/device.dart';

/// The IPv6 routing configurator for the Configuration scope.
class ConfigurationIpv6Routing {

  /// The device being configured.
  final Device device;

  ConfigurationIpv6Routing(this.device);

  /// Enables IPv6 routing.
  void enable() => device
    ..comment('Enable IPv6 routing')
    ..run('ipv6 unicast-routing');

  /// Disables IPv6 routing.
  void disable() => device
    ..comment('Disable IPv6 routing')
    ..run('no ipv6 unicast routing');
}
