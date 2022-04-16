import 'package:cisco_ios_dsl/src/configuration/configuration_spanning_tree_portfast_bpdu_guard.dart';
import 'package:cisco_ios_dsl/src/device.dart';

/// The spanning tree PortFast configurator for the Configuration scope.
class ConfigurationSpanningTreePortfast {

  /// The device being configured.
  final Device device;

  /// The BPDU guard configurator.
  final ConfigurationSpanningTreePortfastBpduGuard bpduGuard;

  ConfigurationSpanningTreePortfast(this.device)
    : bpduGuard = ConfigurationSpanningTreePortfastBpduGuard(device);

  /// Enables PortFast globally.
  void enableGlobally() => device
    ..comment('Enable PortFast globally.')
    ..run('spanning-tree portfast default');

  /// Enables PortFast globally for trunks only.
  void enableForTrunksGlobally() => device
    ..comment('Enable PortFast globally for trunks only')
    ..run('spanning-tree portfast trunk');

  /// Disables PortFast globally.
  void disableGlobally() => device
    ..comment('Disable PortFast globally')
    ..run('spanning-tree portfast disable');
}
