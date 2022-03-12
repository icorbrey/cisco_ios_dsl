import 'package:cisco_ios_dsl/src/configuration/configuration_spanning_tree_portfast_bpdu_guard.dart';
import 'package:cisco_ios_dsl/src/device.dart';

class ConfigurationSpanningTreePortfast {

  final Device device;
  final ConfigurationSpanningTreePortfastBpduGuard bpduGuard;

  ConfigurationSpanningTreePortfast(this.device)
    : bpduGuard = ConfigurationSpanningTreePortfastBpduGuard(device);

  void enable(String port) => device
    ..run('set spantree portfast $port enable');

  void enableForTrunk(String port) => device
    ..run('set spantree portfast $port enable trunk');

  void disable(String port) => device
    ..run('set spantree portfast $port disable');
}
