import 'package:cisco_ios_dsl/src/configuration/configuration_scope.dart';
import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/scope.dart';
import 'package:intl/intl.dart';

class PriviledgedScope {

  final Device device;
  PriviledgedScope(this.device);

  void configure(void Function(ConfigurationScope x) body) => device
    ..useScope(Scope.configure(), 'configure terminal', body);

  void setClock(DateTime time) => device
    ..run('clock set ${DateFormat("HH:mm:ss dd MMMM yyyy").format(time)}');

  void saveConfig() => device
    ..run('copy running-config startup-config \n');

  void reload() => device
    ..run('reload');
}
