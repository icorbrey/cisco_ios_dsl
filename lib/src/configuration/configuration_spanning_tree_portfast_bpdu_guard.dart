import 'package:cisco_ios_dsl/src/device.dart';

class ConfigurationSpanningTreePortfastBpduGuard {

  final Device device;

  ConfigurationSpanningTreePortfastBpduGuard(this.device);

  void enable(String port) => device
    ..run('set spantree portfast bpdu-guard $port enable');

  void disable(String port) => device
    ..run('set spantree portfast bpdu-guard $port disable');
}
