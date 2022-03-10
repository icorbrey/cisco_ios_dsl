import 'package:cisco_ios_dsl/src/device.dart';

class ToggleableProperty {

  final Device device;
  final String enableCommand;
  final String disableCommand;

  ToggleableProperty(this.device, this.enableCommand, this.disableCommand);

  void enable() => device
    ..run(enableCommand);

  void disable() => device
    ..run(disableCommand);
}
