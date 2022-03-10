import 'package:cisco_ios_dsl/src/device.dart';

class InterfaceSwitchportVoice {

  final Device device;

  InterfaceSwitchportVoice(this.device);
  
  void enable(String voice) => device
    ..run('switchport voice $voice');
}
