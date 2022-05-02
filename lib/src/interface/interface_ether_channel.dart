import 'package:cisco_ios_dsl/src/device.dart';

/// The EtherChannel configurator for the Interface scope.
class InterfaceEtherChannel {

  /// The device being configured.
  final Device device;
  
  InterfaceEtherChannel(this.device);

  /// Enables Link Aggregation Control Protocol (LACP) for this interface on [group].
  void enableLACP(int group) => device
    ..comment('Enable EtherChannel LACP for group $group')
    ..run('channel-group $group mode active')
    ..run('channel-protocol lacp');

  /// Enables Port Aggregation Protocol (PAgP) for this interface on [group].
  void enablePAgP(int group) => device
    ..comment('Enable EtherChannel PAgP for group $group')
    ..run('channel-group $group mode desirable');
}
