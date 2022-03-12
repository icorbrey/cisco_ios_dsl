import 'package:cisco_ios_dsl/src/device.dart';

class ConfigurationSpanningTree {

  final Device device;

  ConfigurationSpanningTree(this.device);

  void enableRapidPVST() => device
    ..run('spanning-tree mode rapid-pvst');

  void setPriorityValue(int vlan, int priority) {
    if (priority % 4096 != 0 || 15 < priority / 4096) {
      throw ArgumentError.value(priority);
    }

    device.run('spanning-tree vlan $vlan priority $priority');
  }
}
