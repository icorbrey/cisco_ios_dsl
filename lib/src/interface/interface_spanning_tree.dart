import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_spanning_tree_portfast.dart';

/// The spanning tree configurator for the Interface scope.
class InterfaceSpanningTree {

  /// The device being configured.
  final Device device;

  /// The PortFast configurator.
  final InterfaceSpanningTreePortfast portfast;

  InterfaceSpanningTree(this.device)
    : portfast = InterfaceSpanningTreePortfast(device);
}
