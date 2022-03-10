import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/line/line_transport_input.dart';
import 'package:cisco_ios_dsl/src/line/line_transport_output.dart';

class LineTransport {

  final Device device;
  final LineTransportInput input;
  final LineTransportOutput output;

  LineTransport(this.device)
    : input = LineTransportInput(device),
      output = LineTransportOutput(device);
}
