import 'package:cisco_ios_dsl/src/device.dart';

/// The IPv4 DNS lookup configurator for the Configuration scope.
class ConfigurationIpv4DnsLookup {

  /// The device being configured.
  final Device device;

  ConfigurationIpv4DnsLookup(this.device);

  /// Enables DNS lookup.
  void enable() => device
    ..comment('Enable DNS lookup')
    ..run('ip domain-lookup');

  /// Disables DNS lookup.
  void disable() => device
    ..comment('Disable DNS lookup')
    ..run('no ip domain-lookup');
}
