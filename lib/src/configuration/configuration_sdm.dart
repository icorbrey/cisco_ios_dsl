import 'package:cisco_ios_dsl/src/device.dart';

/// The switching database manager (SDM) configurator for the Configuration scope.
class ConfigurationSdm {

  /// The device being configured.
  final Device device;

  ConfigurationSdm(this.device);

  /// Sets SDM to prefer dual IPv4 and IPv6 protocols.
  void preferDualProtocol() => device
    ..comment('Set SDM to prefer dual IPv4 and IPv6 protocols')
    ..run('sdm prefer dual-ipv4-and-ipv6 default');

  /// Sets SDM to prefer lanbase routing.
  void preferLanbaseRouting() => device
    ..comment('Set SDM to prefer lanbase routing')
    ..run('sdm prefer lanbase-routing default');
}
