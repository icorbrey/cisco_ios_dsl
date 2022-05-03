import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';

/// The IPv4 SSH configurator for the Configuration scope.
class ConfigurationIpv4Routing {

  /// The device being configured.
  final Device device;

  ConfigurationIpv4Routing(this.device);

  /// Enables IPv4 routing.
  void enable() => device
    ..comment('Enable IPv4 routing')
    ..run('ip routing');

  /// Creates a static default route.
  void createStaticDefaultRoute(IPv4 packetMask, IPv4 destination) => device
    ..comment('Create a static default IPv4 route')
    ..comment('  Packet mask IP:      ${packetMask.ip}')
    ..comment('  Packet mask netmask: ${packetMask.mask}')
    ..comment('  Destination IP:      ${destination.ip}')
    ..run('ip route ${packetMask.ip} ${packetMask.mask} ${destination.ip}');

  /// Creates a floating static default route.
  void createFloatingStaticDefaultRoute(IPv4 packetMask, IPv4 destination, int administrativeDistance) => device
    ..comment('Create a floating static default IPv4 route')
    ..comment('  Packet mask IP:          ${packetMask.ip}')
    ..comment('  Packet mask netmask:     ${packetMask.mask}')
    ..comment('  Destination IP:          ${destination.ip}')
    ..comment('  Administrative distance: $administrativeDistance')
    ..run('ip route ${packetMask.ip} ${packetMask.mask} ${destination.ip} $administrativeDistance');

  /// Disables IPv4 routing.
  void disable() => device
    ..comment('Disable IPv4 routing')
    ..run('no ip routing');
}
