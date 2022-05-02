import 'package:cisco_ios_dsl/src/device.dart';

/// The password encryption service configurator for the Configuration scope.
class ConfigurationServicesPasswordEncryption {

  /// The device being configured.
  final Device device;

  ConfigurationServicesPasswordEncryption(this.device);

  /// Enables the password encryption service.
  void enable() => device
    ..comment('Enable password encryption')
    ..run('service password-encryption');

  /// Disables the password encryption service.
  void disable() => device
    ..comment('Disable password encryption')
    ..run('no service password-encryption');
}
