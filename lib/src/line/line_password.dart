import 'package:cisco_ios_dsl/src/device.dart';

class LinePassword {

  final Device device;

  LinePassword(this.device);

  void disable() => device
    ..run('no password');

  void enable(String password) => device
    ..run('password $password');
}
