import 'package:cisco_ios_dsl/src/configuration/configuration_services_password_encryption.dart';
import 'package:cisco_ios_dsl/src/device.dart';

/// Services container for the Configuration scope.
class ConfigurationServices {

  /// The device being configured.
  final Device device;

  /// The password encryption service configurator.
  final ConfigurationServicesPasswordEncryption passwordEncryption;

  ConfigurationServices(this.device)
    : passwordEncryption = ConfigurationServicesPasswordEncryption(device);
}
