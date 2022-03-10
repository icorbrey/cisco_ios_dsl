import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/toggleable_property.dart';

class ConfigurationServices {

  final Device device;

  ConfigurationServices(this.device)
    : passwordEncryption = ToggleableProperty(device, 'service password-encryption', 'no service password-encryption');

  final ToggleableProperty passwordEncryption;
}
