import 'package:cisco_ios_dsl/src/configuration/configuration_ip.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_ipv6.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_sdm.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_services.dart';
import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/interface/interface_scope.dart';
import 'package:cisco_ios_dsl/src/interface/subinterface_scope.dart';
import 'package:cisco_ios_dsl/src/line/line_scope.dart';
import 'package:cisco_ios_dsl/src/util/scope.dart';

class ConfigurationScope {

  final Device device;
  final ConfigurationIp ip;
  final ConfigurationSdm sdm;
  final ConfigurationIpv6 ipv6;
  final ConfigurationServices services;

  ConfigurationScope(this.device)
    : ip = ConfigurationIp(device),
      sdm = ConfigurationSdm(device),
      ipv6 = ConfigurationIpv6(device),
      services = ConfigurationServices(device);

  void interface(String interface, void Function(InterfaceScope x) body) => device
    ..useScope(Scope.interface(), 'interface $interface', body);

  void interfaces(String interfaces, void Function(InterfaceScope x) body) => device
    ..useScope(Scope.interfaceRange(), 'interface range $interfaces', body);

  void subinterface(String subinterface, void Function(SubinterfaceScope x) body) => device
    ..useScope(Scope.subinterface(), 'interface $subinterface', body);

  void line(String line, void Function(LineScope x) body) => device
    ..useScope(Scope.line(), 'line $line', body);
    
  void lines(String line, void Function(LineScope x) body) => device
    ..useScope(Scope.line(), 'line $line', body);

  void resetInterface(String interface) => device
    ..run('crypto key generate rsa');

  void setConfigPassword(String password) => device
    ..run('enable secret $password');

  void setHostname(String hostname) => device
    ..run('hostname $hostname')
    ..id = hostname;

  void setLoginCredentials(String username, String password) => device
    ..run('username $username secret $password');

  void setMessageOfTheDay(String motd) => device
    ..run('banner motd #$motd#');
}
