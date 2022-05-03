import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv6.dart';

/// The IPv6 routing configurator for the Configuration scope.
class ConfigurationIpv6Routing {

  /// The device being configured.
  final Device device;

  ConfigurationIpv6Routing(this.device);

  /// Enables IPv6 routing.
  void enable() => device
    ..comment('Enable IPv6 routing')
    ..run('ipv6 unicast-routing');

  /// Creates a static default route.
  void createStaticDefaultRoute(IPv6 packetMask, IPv6 destination) => device
    ..comment('Create a static default IPv6 route')
    ..comment('  Packet mask IP:      ${packetMask.ip}')
    ..comment('  Packet mask netmask: ${packetMask.cidr}')
    ..comment('  Destination IP:      ${destination.ip}')
    ..run('ip route ${packetMask.ip}/${packetMask.cidr} ${destination.ip}');

  /// Creates a floating static default route.
  void createFloatingStaticDefaultRoute(IPv6 packetMask, IPv6 destination, int administrativeDistance) => device
    ..comment('Create a floating static default IPv6 route')
    ..comment('  Packet mask IP:          ${packetMask.ip}')
    ..comment('  Packet mask netmask:     ${packetMask.cidr}')
    ..comment('  Destination IP:          ${destination.ip}')
    ..comment('  Administrative distance: $administrativeDistance')
    ..run('ip route ${packetMask.ip}/${packetMask.cidr} ${destination.ip} $administrativeDistance');

  /// Removes a static default route
  void removeStaticDefaultRoute(IPv6 packetMask, IPv6 destination) => device
    ..comment('Remove a static default IPv6 route')
    ..run('ip route ${packetMask.ip}/${packetMask.cidr} ${destination.ip}');

  /// Disables IPv6 routing.
  void disable() => device
    ..comment('Disable IPv6 routing')
    ..run('no ipv6 unicast routing');
}
