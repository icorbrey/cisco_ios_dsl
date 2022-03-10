import 'package:cisco_ios_dsl/src/device.dart';

class LineTransportInput {

  final Device device;

  LineTransportInput(this.device);

  void disable() => device
    ..run('transport input none');

  void enable(String type) => device
    ..run('transport input $type');
}
