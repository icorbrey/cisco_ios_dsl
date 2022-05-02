import 'package:cisco_ios_dsl/src/configuration/configuration_scope.dart';
import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/scope.dart';
import 'package:intl/intl.dart';

/// The Priviledged scope.
class PriviledgedScope {

  /// The device being configured.
  final Device device;

  PriviledgedScope(this.device);

  /// Configures the device.
  void configure(void Function(ConfigurationScope x) body) => device
    ..comment('Configure this device')
    ..useScope(Scope.configure(), 'configure terminal', body);

  /// Sets the clock to [time]
  void setClock(DateTime time) => device
    ..comment('Set the time to ${time.toLocal()}')
    ..run('clock set ${DateFormat("HH:mm:ss dd MMMM yyyy").format(time)}');

  /// Saves the current configuration
  void saveConfig() => device
    ..comment('Save the current configuration')
    ..run('copy running-config startup-config \n');

  /// Reloads the device
  void reload() => device
    ..comment('Reload the device')
    ..run('reload');
}
