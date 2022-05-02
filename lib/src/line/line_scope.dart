import 'package:cisco_ios_dsl/src/device.dart';
import 'package:cisco_ios_dsl/src/line/line_login.dart';
import 'package:cisco_ios_dsl/src/line/line_password.dart';
import 'package:cisco_ios_dsl/src/line/line_transport.dart';

/// The Line scope.
class LineScope {

  /// The device being configured.
  final Device device;

  /// The line login configurator.
  final LineLogin login;

  /// The line password configurator.
  final LinePassword password;

  /// The line transport method configurator.
  final LineTransport transport;

  LineScope(this.device)
    : login = LineLogin(device),
      password = LinePassword(device),
      transport = LineTransport(device);
}
