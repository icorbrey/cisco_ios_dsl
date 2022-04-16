import 'package:cisco_ios_dsl/src/device.dart';

/// The PostFast Bridge Protocol Data Unit (BPDU) configurator for the
/// Configuration scope.
class ConfigurationSpanningTreePortfastBpduGuard {

  /// The device being configured.
  final Device device;

  ConfigurationSpanningTreePortfastBpduGuard(this.device);

  /// Enables BPDU globally.
  void enableGlobally() => device
    ..comment('Enable BPDU globally')
    ..run('spanning-tree portfast edge bpduguard default');

  /// Disables BPDU globally.
  void disableGlobally() => device
    ..comment('Disable BPDU globally')
    ..run('no spanning-tree portfast edge bpduguard default');
}
