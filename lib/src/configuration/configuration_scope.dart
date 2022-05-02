import 'package:cisco_ios_dsl/src/configuration/configuration_ipv4.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_ipv6.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_sdm.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_services.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_spanning_tree.dart';
import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_scope.dart';
import 'package:cisco_ios_dsl/src/interface/subinterface_scope.dart';
import 'package:cisco_ios_dsl/src/line/line_scope.dart';
import 'package:cisco_ios_dsl/src/util/scope.dart';
import 'package:cisco_ios_dsl/src/vlan/vlan_scope.dart';

/// The configuration scope configurator.
class ConfigurationScope {

  /// The device being configured.
  final Device device;

  /// The IPv4 configurator.
  final ConfigurationIpv4 ip;

  /// The SDM configurator.
  final ConfigurationSdm sdm;

  /// The IPv6 configurator.
  final ConfigurationIpv6 ipv6;

  /// The service configurator.
  final ConfigurationServices services;

  /// The spanning tree configurator.
  final ConfigurationSpanningTree spanningTree;

  ConfigurationScope(this.device)
    : ip = ConfigurationIpv4(device),
      sdm = ConfigurationSdm(device),
      ipv6 = ConfigurationIpv6(device),
      services = ConfigurationServices(device),
      spanningTree = ConfigurationSpanningTree(device);

  /// Configures the given interface.
  void interface(String interface, void Function(InterfaceScope x) body) => device
    ..comment('Configure interface "$interface"')
    ..useScope(Scope.interface(), 'interface $interface', body);

  /// Configures the given range of interfaces.
  void interfaces(String interfaces, void Function(InterfaceScope x) body) => device
    ..comment('Configure interfaces "$interfaces"')
    ..useScope(Scope.interfaceRange(), 'interface range $interfaces', body);

  /// Configures the given subinterface.
  void subinterface(String subinterface, void Function(SubinterfaceScope x) body) => device
    ..comment('Configure subinterface "$subinterface"')
    ..useScope(Scope.subinterface(), 'interface $subinterface', body);

  /// Configures the given line.
  void line(String line, void Function(LineScope x) body) => device
    ..comment('Configure line "$line"')
    ..useScope(Scope.line(), 'line $line', body);
    
  /// Configures the given lines.
  void lines(String lines, void Function(LineScope x) body) => device
    ..comment('Configure lines "$lines"')
    ..useScope(Scope.line(), 'line $lines', body);

  /// Configures the given VLAN.
  void vlan(int vlan, void Function(VlanScope x) body) => device
    ..comment('Configure VLAN "$vlan"')
    ..useScope(Scope.vlan(), 'vlan $vlan', body);

  // void resetInterface(String interface) => device

  /// Generates a secure RSA key with the given number of bits.
  void generateSecureKey(int bits) => device
    ..comment('Generate $bits-bit RSA key')
    ..run('crypto key generate rsa');

  /// Sets the device's configuration password.
  void setConfigPassword(String password) => device
    ..comment('Set config password to "$password"')
    ..run('enable secret $password');

  /// Sets the device's hostname.
  void setHostname(String hostname) => device
    ..comment('Set hostname to "$hostname"')
    ..run('hostname $hostname')
    ..id = hostname;

  /// Sets the device's login credentials.
  void setLoginCredentials(String username, String password) => device
    ..comment('Set username to "$username" and password to "$password"')
    ..run('username $username secret $password');

  /// Sets the device's message of the day.
  void setMessageOfTheDay(String motd) => device
    ..comment('Set message of the day to "$motd"')
    ..run('banner motd #$motd#');
}
