import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/util/toggleable_property.dart';

class ConfigurationIpv6 {

  final Device device;

  ConfigurationIpv6(Device _device)
    : device = _device,
      routing = ToggleableProperty(_device, 'ipv6 unicast-routing', 'no ipv6 unicast-routing');

  final ToggleableProperty routing;
}
