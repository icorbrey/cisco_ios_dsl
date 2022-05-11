import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';

/// The IPv4 SSH configurator for the Configuration scope.
class ConfigurationIpv4Routing {

  /// The device being configured.
  final Device device;

  ConfigurationIpv4Routing(this.device);

  final IPv4 _defaultRoute = IPv4.fromMask('0.0.0.0', '0.0.0.0');

  /// Enables IPv4 routing.
  void enable() => device
    ..comment('Enable IPv4 routing')
    ..run('ip routing');

  /// Creates a route that packets not assignable to other routes get sent to.
  void createStaticDefaultRoute(IPv4 nextHop) => device
    ..comment('Create a static default IPv4 route')
    ..comment('  Next hop: ${nextHop.ip}')
    ..run('ip route ${_defaultRoute.ip} ${_defaultRoute.mask} ${nextHop.ip}');

  /// Creates a route that packets not assignable to other routes get sent to.
  void createStaticDefaultInterfaceRoute(String interface) => device
    ..comment('Create a static default IPv4 route')
    ..comment('  Next hop interface: $interface')
    ..run('ip route ${_defaultRoute.ip} ${_defaultRoute.mask} $interface');

  /// Creates a route that packets belonging to the given network get sent to.
  void createStaticSummaryRoute(IPv4 destination, IPv4 nextHop) => device
    ..comment('Create a static summary IPv4 route')
    ..comment('  Destination address: ${destination.ip}')
    ..comment('  Destination mask:    ${destination.mask}')
    ..comment('  Next hop:            ${nextHop.ip}')
    ..run('ip route ${destination.ip} ${destination.mask} ${nextHop.ip}');

  /// Creates a route that packets belonging to the given network get sent to.
  void createRecursiveStaticRoute(IPv4 destination, IPv4 nextHop) => device
    ..comment('Create a recursive static IPv4 route')
    ..comment('  Destination address: ${destination.ip}')
    ..comment('  Destination mask:    ${destination.mask}')
    ..comment('  Next hop:            ${nextHop.ip}')
    ..run('ip route ${destination.ip} ${destination.mask} ${nextHop.ip}');

  /// Creates a route that packets belonging to the given network get sent to if
  /// their other routes cannot take them.
  void createStaticFloatingRoute(IPv4 destination, IPv4 nextHop, int administrativeDistance) => device
    ..comment('Create a static floating IPv4 route')
    ..comment('  Destination address:     ${destination.ip}')
    ..comment('  Destination mask:        ${destination.mask}')
    ..comment('  Next hop:                ${nextHop.ip}')
    ..comment('  Administrative distance: $administrativeDistance')
    ..run('ip route ${destination.ip} ${destination.mask} ${nextHop.ip} $administrativeDistance');

  /// Creates a route that packets belonging to the given network and interface
  /// get sent to.
  void createFullySpecifiedStaticRoute(IPv4 destination, IPv4 nextHop, String interface) => device
    ..comment('Create a recursive static IPv4 route')
    ..comment('  Destination address: ${destination.ip}')
    ..comment('  Destination mask:    ${destination.mask}')
    ..comment('  Next hop:            ${nextHop.ip}')
    ..comment('  Next hop interface:  $interface')
    ..run('ip route ${destination.ip} ${destination.mask} ${nextHop.ip}');

  /// Disables IPv4 routing.
  void disable() => device
    ..comment('Disable IPv4 routing')
    ..run('no ip routing');
}
