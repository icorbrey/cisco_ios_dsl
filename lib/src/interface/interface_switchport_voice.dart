import 'package:cisco_ios_dsl/src/device.dart';

/// The voice mode configurator for the Interface scope.
class InterfaceSwitchportVoice {

  /// The device being configured.
  final Device device;

  InterfaceSwitchportVoice(this.device);
  
  /// Enables voice mode.
  void enable(String voice) => device
    ..comment('Set this interface as a voice port')
    ..run('switchport voice $voice');
}
