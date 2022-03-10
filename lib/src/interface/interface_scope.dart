import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/toggleable_property.dart';

class InterfaceScope {

  final Device device;
  final ToggleableProperty operation;

  InterfaceScope(this.device)
    : operation = ToggleableProperty(device, 'no shutdown', 'shutdown');

  void setDescription(String description) => device
    ..run('description $description');
}
