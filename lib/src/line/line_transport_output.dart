import 'package:cisco_ios_dsl/src/device.dart';

/// The input transport method configurator for the Line scope.
class LineTransportOutput {

  /// The device being configured.
  final Device device;

  LineTransportOutput(this.device);

  /// Disables the output transport for this line.
  void disable() => device
    ..comment('Disable the output transport for this line')
    ..run('transport output none');

  /// Sets the output transport [method] for this line.
  void enable(String method) => device
    ..comment('Set the output transport method for this line')
    ..run('transport output $method');
}
