import 'package:cisco_ios_dsl/src/device.dart';

class ConfigurationSdm {

  final Device device;

  ConfigurationSdm(this.device);

  void preferDualProtocol() => device
    ..run('sdm prefer dual-ipv4-and-ipv6 default');

  void preferLanbaseRouting() => device
    ..run('sdm prefer lanbase-routing default');
}
