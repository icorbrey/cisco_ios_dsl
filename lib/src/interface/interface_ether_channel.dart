import 'package:cisco_ios_dsl/src/device.dart';

class InterfaceEtherChannel {

  final Device device;
  
  InterfaceEtherChannel(this.device);

  void enableLACP(int group) => device
    ..run('channel-group $group mode active')
    ..run('channel-protocol lacp');

  void enablePAgP(int group) => device
    ..run('channel-group $group mode desirable');
}
