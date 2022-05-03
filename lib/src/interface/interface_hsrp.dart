import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';

/// The HSRP configurator for the Interface scope.
class InterfaceHsrp {

  /// The device being configured.
  final Device device;

  InterfaceHsrp(this.device);

  /// Enables HSRP with the given [version].
  void enable([int version = 2]) => device
    ..comment('Enable HSRP version $version')
    ..run('standby version $version');

  /// Sets the standby [gateway] for the given [group].
  void setStandbyGatewayForGroup(int group, IPv4 gateway) => device
    ..comment('Set the standby gateway for group $group to ${gateway.ip}')
    ..run('standby $group ip ${gateway.ip}');

  /// Sets the standby router [priority] for the given [group].
  void setStandbyRouterPriority(int group, int priority) => device
    ..comment('Set group $group\'s standby router priority to $priority')
    ..run('standby $group priority $priority');

  /// Allows the given [group]'s primary router to retake control.
  void allowPrimaryRouterToRetakeControl(int group) => device
    ..comment('Allow group $group\'s primary router to retake control')
    ..run('standby $group preempt');
}
