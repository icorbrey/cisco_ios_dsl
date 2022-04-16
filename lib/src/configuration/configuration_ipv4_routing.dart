import 'package:cisco_ios_dsl/src/device.dart';

/// The IPv4 SSH configurator for the Configuration scope.
class ConfigurationIpv4Routing {

  /// The device being configured.
  final Device device;

  ConfigurationIpv4Routing(this.device);

  /// Enables IPv4 routing.
  void enable() => device
    ..comment('Enable IPv4 routing')
    ..run('ip routing');

  /// Disables IPv4 routing.
  void disable() => device
    ..comment('Disable IPv4 routing')
    ..run('no ip routing');
}
