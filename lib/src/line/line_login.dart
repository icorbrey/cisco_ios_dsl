import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/toggleable_property.dart';

class LineLogin extends ToggleableProperty {

  LineLogin(Device device)
    : super(device, 'login', 'no login');

  void setType(String type) => device
    ..run('login $type');
}
