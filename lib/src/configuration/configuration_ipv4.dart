import 'package:cisco_ios_dsl/src/configuration/configuration_ipv4_dhcp.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_ipv4_dns_lookup.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_ipv4_routing.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_ipv4_ssh.dart';
import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/ipv4.dart';

/// IPv4 container for the Configuration scope.
class ConfigurationIpv4 {

  /// The device being configured.
  final Device device;

  /// The SSH configurator.
  final ConfigurationIpv4Ssh ssh;

  /// The DHCP configurator.
  final ConfigurationIpv4Dhcp dhcp;

  /// The routing configurator.
  final ConfigurationIpv4Routing routing;

  /// The DNS lookup configurator.
  final ConfigurationIpv4DnsLookup dnsLookup;
  
  ConfigurationIpv4(this.device)
    : ssh = ConfigurationIpv4Ssh(device),
      dhcp = ConfigurationIpv4Dhcp(device),
      routing = ConfigurationIpv4Routing(device),
      dnsLookup = ConfigurationIpv4DnsLookup(device);

  /// Sets this device's [domain] name.
  void setDomainName(String domain) => device
    ..comment('Set domain name to "$domain"')
    ..run('ip domain-name $domain');

  /// Sets this device's default [gateway].
  void setDefaultGateway(IPv4 gateway) => device
    ..comment('Set default gateway to "${gateway.ip}')
    ..run('ip default-gateway ${gateway.ip}');

  /// Sets a default [route] for [interface].
  void setDefaultRoute(IPv4 route, String interface) => device
    ..comment('Assign default route "${route.ip} ${route.mask}" to interface "$interface"')
    ..run('ip route ${route.ip} ${route.mask} $interface');
}
