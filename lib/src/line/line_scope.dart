import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/line/line_login.dart';
import 'package:cisco_ios_dsl/src/line/line_password.dart';
import 'package:cisco_ios_dsl/src/line/line_transport.dart';

class LineScope {

  final Device device;
  final LineLogin login;
  final LinePassword password;
  final LineTransport transport;

  LineScope(this.device)
    : login = LineLogin(device),
      password = LinePassword(device),
      transport = LineTransport(device);
}
