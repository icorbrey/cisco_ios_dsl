import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_spanning_tree_portfast_bpdu_guard.dart';

/// The PortFast configurator for the Interface scope.
class InterfaceSpanningTreePortfast {

  /// The device being configured.
  final Device device;

  /// The BPDU guard configurator.
  final InterfaceSpanningTreePortfastBpduGuard bpduGuard;

  InterfaceSpanningTreePortfast(this.device)
    : bpduGuard = InterfaceSpanningTreePortfastBpduGuard(device);

  /// Enables PortFast for this interface.
  void enable() => device
    ..comment('Enable PortFast for this interface')
    ..run('spanning-tree portfast');

  /// Disables PortFast for this interface.
  void disable() => device
    ..comment('Disable PortFast for this interface')
    ..run('spanning-tree portfast disable');

  /// Enables PortFast for this trunk interface.
  void enableForTrunk() => device
    ..comment('Enable PortFast for this trunk interface')
    ..run('spanning-tree portfast trunk');
}
