import 'package:cisco_ios_dsl/src/device.dart';

class ConfigurationSpanningTree {

  final Device device;

  ConfigurationSpanningTree(this.device);

  void enableRapidPVST() => device
    ..run('spanning-tree mode rapid-pvst');
}
