import 'package:cisco_ios_dsl/src/device.dart';

class VlanScope {

  final Device device;

  VlanScope(this.device);

  void setName(String name) => device
    ..run('name $name');
}
