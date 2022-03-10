import 'package:cisco_ios_dsl/src/configuration/configuration_ip.dart';
import 'package:cisco_ios_dsl/src/configuration/configuration_ipv6.dart';
import 'package:cisco_ios_dsl/src/device.dart';

class ConfigurationScope {

  final Device device;

  ConfigurationScope(Device _device)
    : device = _device,
      ip = ConfigurationIp(_device),
      ipv6 = ConfigurationIpv6(_device);

  final ConfigurationIp ip;
  final ConfigurationIpv6 ipv6;

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
