import 'package:cisco_ios_dsl/src/device.dart';
import 'package:intl/intl.dart';

class PriviledgedScope {
  
  final Device device;
  PriviledgedScope(this.device);

  void setClock(DateTime time) => device
    ..run('clock set ${DateFormat("HH:mm:ss dd MMMM yyyy").format(time)}');

  void saveConfig() => device
    ..run('copy running-config startup-config \n');
}
