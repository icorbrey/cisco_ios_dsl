import 'package:cisco_ios_dsl/src/device.dart';

class ConfigurationSpanningTreePortfastBpduGuard {

  final Device device;

  ConfigurationSpanningTreePortfastBpduGuard(this.device);

  void enableGlobally() => device
    ..run('spanning-tree portfast edge bpduguard default');

  void disableGlobally() => device
    ..run('no spanning-tree portfast edge bpduguard default');
}
