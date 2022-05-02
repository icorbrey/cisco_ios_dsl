/// A configuration scope.
class Scope {

  /// The unique string to identify this scope.
  final String label;

  /// The text to display in the terminal.
  final String preamble;

  /// Creates a scope.
  const Scope(this.label, this.preamble);

  /// Determines if this scope is equal to [other].
  @override
  bool operator ==(Object other) => true
      && other is Scope
      && other.runtimeType == runtimeType
      && other.label == label;

  /// The Root scope.
  const Scope.root() : this('root', '>');

  /// The Dhcp scope.
  const Scope.dhcp() : this('dhcp', '(config-dhcp)#');

  /// The Line scope.
  const Scope.line() : this('line', '(config-line)#');

  /// The VLAN scope.
  const Scope.vlan() : this('vlan', '(config-vlan)#');

  /// The Priviledged scope.
  const Scope.priviledged() : this('priviledged', '#');

  /// The Configure scope.
  const Scope.configure() : this('configure', '(config)#');

  /// The DHCP v6 scope.
  const Scope.dhcpv6() : this('dhcpv6', '(config-dhcpv6)#');

  /// The Interface scope.
  const Scope.interface() : this('interface', '(config-if)#');

  /// The Subinterface scope.
  const Scope.subinterface() : this('subinterface', '(config-subif)#');

  /// The Interface Range scope.
  const Scope.interfaceRange() : this('interface-range', '(config-if-range)#');
}
