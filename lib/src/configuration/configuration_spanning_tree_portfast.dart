import 'package:cisco_ios_dsl/src/configuration/configuration_spanning_tree_portfast_bpdu_guard.dart';
import 'package:cisco_ios_dsl/src/device.dart';

class ConfigurationSpanningTreePortfast {

  final Device device;
  final ConfigurationSpanningTreePortfastBpduGuard bpduGuard;

  ConfigurationSpanningTreePortfast(this.device)
    : bpduGuard = ConfigurationSpanningTreePortfastBpduGuard(device);

  void enableGlobally() => device
    ..run('spanning-tree portfast default');

  void enableForTrunksGlobally() => device
    ..run('spanning-tree portfast trunk');

  void disableGlobally() => device
    ..run('spanning-tree portfast disable');
}
