import 'package:cisco_ios_dsl/src/device.dart';

/// The input transport method configurator for the Line scope.
class LineTransportInput {

  /// The device being configured.
  final Device device;

  LineTransportInput(this.device);

  /// Disables the input transport for this line.
  void disable() => device
    ..comment('Disable the input transport for this line')
    ..run('transport input none');

  /// Sets the input transport [method] for this line.
  void enable(String method) => device
    ..comment('Set the input transport method for this line')
    ..run('transport input $method');
}
