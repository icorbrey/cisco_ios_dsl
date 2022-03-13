import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/toggleable_property.dart';

class InterfaceSpanningTreePortfast extends ToggleableProperty{

  final ToggleableProperty bpduGuard;

  InterfaceSpanningTreePortfast(Device device)
    : bpduGuard = ToggleableProperty(device,
        'spanning-tree bpduguard enable',
        'spanning-tree bpduguard disable'
      ),
      super(device, 'spanning-tree portfast', 'spanning-tree portfast disable');

  void enableForTrunk() => device
    ..run('spanning-tree portfast trunk');
}
