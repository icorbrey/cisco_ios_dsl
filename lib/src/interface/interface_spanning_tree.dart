import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_spanning_tree_portfast.dart';

class InterfaceSpanningTree {

  final Device device;
  final InterfaceSpanningTreePortfast portfast;

  InterfaceSpanningTree(this.device)
    : portfast = InterfaceSpanningTreePortfast(device);
}
