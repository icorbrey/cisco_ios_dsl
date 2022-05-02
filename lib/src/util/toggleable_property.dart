import 'package:cisco_ios_dsl/src/device.dart';

/// A property which can be enabled or disabled.
class ToggleableProperty {

  /// The device being configured.
  final Device device;

  /// The command to run when enabling.
  final String _enableCommand;

  /// The comment to post when enabling.
  final String _enableComment;

  /// The command to run when disabling.
  final String _disableCommand;

  /// The comment to post when disabling.
  final String _disableComment;

  ToggleableProperty(
    this.device,
    this._enableComment,
    this._enableCommand,
    this._disableCommand,
    this._disableComment
  );

  /// Enables this property.
  void enable() => device
    ..comment(_enableComment)
    ..run(_enableCommand);

  /// Disables this property.
  void disable() => device
    ..comment(_disableComment)
    ..run(_disableCommand);
}
