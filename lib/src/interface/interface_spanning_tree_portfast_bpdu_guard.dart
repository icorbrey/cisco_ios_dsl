import 'package:cisco_ios_dsl/src/device.dart';

/// The BPDU guard configurator for the Interface scope.
class InterfaceSpanningTreePortfastBpduGuard {

  /// The device being configured.
  final Device device;

  InterfaceSpanningTreePortfastBpduGuard(this.device);

  /// Enables BPDU guard for this interface.
  void enable() => device
    ..comment('Enable BPDU guard for this interface')
    ..run('spanning-tree bpdu-guard enable');

  /// Disables BPDU guard for this interface.
  void disable() => device
    ..comment('Disable BPDU guard for this interface')
    ..run('spanning-tree bpdu-guard disable');
}
