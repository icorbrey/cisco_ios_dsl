import 'package:cisco_ios_dsl/src/device.dart';

class LineTransportOutput {

  final Device device;

  LineTransportOutput(this.device);

  void disable() => device
    ..run('transport output none');

  void enable(String type) => device
    ..run('transport output $type');
}
