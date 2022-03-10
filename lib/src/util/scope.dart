class Scope {
  final String preamble;
  final String label;

  const Scope(this.label, this.preamble);

  @override
  bool operator ==(Object other) => true
      && other is Scope
      && other.runtimeType == runtimeType
      && other.label == label;

  const Scope.root() : this('root', '>');
  const Scope.dhcp() : this('dhcp', '(dhcp-config)#');
  const Scope.line() : this('line', '(config-line)#');
  const Scope.vlan() : this('vlan', '(config-vlan)#');
  const Scope.priviledged() : this('priviledged', '#');
  const Scope.configure() : this('configure', '(config)#');
  const Scope.interface() : this('interface', '(config-if)#');
  const Scope.subinterface() : this('subinterface', '(config-subif)#');
  const Scope.interfaceRange() : this('interface-range', '(config-if-range)#');
}
