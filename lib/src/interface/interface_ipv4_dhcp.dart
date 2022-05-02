import 'package:cisco_ios_dsl/src/device.dart';

/// The IPv4 DHCP configurator for the Interface scope.
class InterfaceIpv4Dhcp {

  /// The device being configured.
  final Device device;

  InterfaceIpv4Dhcp(this.device);

  /// Enables IPv4 DHCP on this interface.
  void enable() => device
    ..comment('Enable IPv4 DHCP on this interface')
    ..run('ip address dhcp');

  /// Disables IPv4 DHCP on this interface.
  void disable() => device
    ..comment('Disable IPv4 DHCP on this interface')
    ..run('no ip address dhcp');
}
