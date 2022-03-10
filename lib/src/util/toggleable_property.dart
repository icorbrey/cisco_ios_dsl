import 'package:cisco_ios_dsl/src/device.dart';

class ToggleableProperty {

  final Device device;
  final String _enableCommand;
  final String _disableCommand;

  ToggleableProperty(this.device, this._enableCommand, this._disableCommand);

  void enable() => device
    ..run(_enableCommand);

  void disable() => device
    ..run(_disableCommand);
}
