import 'package:cisco_ios_dsl/src/configuration/configuration_spanning_tree_portfast.dart';
import 'package:cisco_ios_dsl/src/device.dart';

/// The spanning tree configurator for the Configuration scope.
class ConfigurationSpanningTree {

  /// The device being configured.
  final Device device;

  /// The portfast configurator.
  final ConfigurationSpanningTreePortfast portfast;

  ConfigurationSpanningTree(this.device)
    : portfast = ConfigurationSpanningTreePortfast(device);

  /// Enables rapid Per-VLAN Spanning Tree (PVST).
  void enableRapidPVST() => device
    ..comment('Enable rapid Per-VLAN Spanning Tree')
    ..run('spanning-tree mode rapid-pvst');

  /// Sets the [priority] for [vlan] on this device.
  void setPriorityValue(int vlan, int priority) {
    if (priority % 4096 != 0 || 15 < priority / 4096) {
      throw ArgumentError.value(priority);
    }

    device
      ..comment('Setting VLAN $vlan priority to $priority')
      ..run('spanning-tree vlan $vlan priority $priority');
  }

  /// Sets the [priority] for [vlan] on this device by offset.
  void setPriorityValueByOffset(int vlan, int offset) =>
    setPriorityValue(vlan, 32768 + (4096 * offset));
}
