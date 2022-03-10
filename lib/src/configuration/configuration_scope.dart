import 'package:cisco_ios_dsl/src/device.dart';

class ConfigurationScope {

  final Device device;

  ConfigurationScope(Device _device)
    : device = _device;

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
