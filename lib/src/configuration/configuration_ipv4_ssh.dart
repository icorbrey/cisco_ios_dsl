import 'package:cisco_ios_dsl/src/device.dart';

/// The IPv4 SSH configurator for the Configuration scope.
class ConfigurationIpv4Ssh {

  /// The device being configured.
  final Device device;

  ConfigurationIpv4Ssh(this.device);

  /// Enables SSH.
  void enable() => device
    ..comment('Enable SSH')
    ..run('ip ssh version 2');

  /// Disables SSH.
  void disable() => device
    ..comment('Disable SSH')
    ..run('no ip ssh');
}
