import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/line/line_transport_input.dart';
import 'package:cisco_ios_dsl/src/line/line_transport_output.dart';

/// The transport method configurator for the Line scope.
class LineTransport {

  /// The device being configured.
  final Device device;

  /// The input transport method configurator.
  final LineTransportInput input;

  /// The output transport method configurator.
  final LineTransportOutput output;

  LineTransport(this.device)
    : input = LineTransportInput(device),
      output = LineTransportOutput(device);
}
