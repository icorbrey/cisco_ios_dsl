## 1.2.0

### Additions

- Added default route configuration commands:
  - Configuration -> `ip.setDefaultRoute`
  - Configuration -> `ipv6.setDefaultRoute`
- Removed Configuration -> `ip.dhcp.createPool`
- Added IPv6 DHCP pool configuration commands:
  - Configuration -> `ipv6.dhcp.pool` (to Ipv6 Pool Scope)
  - Interface -> `ipv6.enable`
  - Interface -> `ipv6.enableDhcpConsumer`
  - Interface -> `ipv6.enableDhcpProvider`
  - Interface -> `ipv6.forceStatefulDhcp`
  - Interface -> `ipv6.setDhcpServer`
  - IPv6 Pool -> `setAddressPrefix`
  - IPv6 Pool -> `setDomainName`
  - IPv6 Pool -> `setDnsServer`

## 1.1.3

### Bugfixes

- Fixed invalid BPDU guard commands

## 1.1.2

### Interface Scope

- Fixed issue where `spanningTree` subcommands were inaccessible

## 1.1.1

### Configuration Scope

- Modified the following commands to operate globally:
  - `spanningTree.portfast.disable`
  - `spanningTree.portfast.bpduGuard.disable`
  - `spanningTree.portfast.bpduGuard.enable`
  - `spanningTree.portfast.enable`
  - `spanningTree.portfast.enableForTrunk`
- Renamed the following commands:
  - `spanningTree.portfast.disable` -> `spanningTree.portfast.disableGlobally`
  - `spanningTree.portfast.bpduGuard.disable` -> `spanningTree.portfast.bpduGuard.disableGlobally`
  - `spanningTree.portfast.bpduGuard.enable` -> `spanningTree.portfast.bpduGuard.enableGlobally`
  - `spanningTree.portfast.enable` -> `spanningTree.portfast.enableGlobally`
  - `spanningTree.portfast.enableForTrunk` -> `spanningTree.portfast.enableForTrunkGlobally`

### Interface Scope

- Fixed that `switchport.access.setVlans` could take multiple VLANS
- Renamed the following commands:
  - `switchport.access.setVlans` -> `switchport.access.setVlan`
- Added the following commands:
  - `spanningTree.portfast.disable`
  - `spanningTree.portfast.bpduGuard.disable`
  - `spanningTree.portfast.bpduGuard.enable`
  - `spanningTree.portfast.enable`
  - `spanningTree.portfast.enableForTrunk`

## 1.1.0

### Configuration Scope

- Added the following commands:
  - `spanningTree.enableRapidPVST`
  - `spanningTree.portfast.disable`
  - `spanningTree.portfast.bpduGuard.disable`
  - `spanningTree.portfast.bpduGuard.enable`
  - `spanningTree.portfast.enable`
  - `spanningTree.portfast.enableForTrunk`
  - `spanningTree.setPriorityValue`
  - `spanningTree.setPriorityValueByOffset`

## 1.0.1

### Bugfixes

- Fixed stringification issue with lists of VLANs in switchport configuration
- Fixed IPv4 and IPv6 not being exported from package

## 1.0.0

### Priviledged scope:

- Added the following commands:
  - `configure` (to Configuration Scope)
  - `reload`
  - `setClock`
  - `saveConfig`

### Configuration Scope

- Added the following commands:
  - `interface` (to Interface Scope)
  - `interfaces` (to Interface Scope)
  - `ip.dhcp.createPool`
  - `ip.dhcp.excludeAddresses`
  - `ip.dhcp.pool` (to Pool Scope)
  - `ip.dnsLookup.disable`
  - `ip.dnsLookup.enable`
  - `ip.routing.disable`
  - `ip.routing.enable`
  - `ip.setDefaultGateway`
  - `ip.setDomainName`
  - `ip.ssh.disable`
  - `ip.ssh.enable`
  - `ipv6.routing.disable`
  - `ipv6.routing.enable`
  - `line` (to Line Scope)
  - `lines` (to Line Scope)
  - `resetInterface`
  - `sdm.preferDualProtocol`
  - `sdm.preferLanbaseRouting`
  - `services.passwordEncryption.disable`
  - `services.passwordEncryption.enable`
  - `setConfigPassword`
  - `setHostname`
  - `setLoginCredentials`
  - `setMessageOfTheDay`
  - `vlan` (to VLAN Scope)

### Interface Scope

- Added the following commands:
  - `etherChannel.enableLACP`
  - `etherChannel.enablePAgP`
  - `ip.dhcp.disable`
  - `ip.dhcp.enable`
  - `ip.setGateway`
  - `ip.setHelperAddress`
  - `ipv6.addGateway`
  - `ipv6.removeGateway`
  - `operation.disable`
  - `operation.enable`
  - `setDescription`
  - `switchport.access.enable`
  - `switchport.access.setVlans`
  - `switchport.trunk.enable`
  - `switchport.trunk.encapsulate`
  - `switchport.trunk.setAllowedVlans`
  - `switchport.trunk.setNativeVlans`
  - `switchport.voice.enable`

### Subinterface Scope

- Added everything from the Interface Scope
- Added the following commands:
  - `encapsulateVlan`
  - `encapsulateNativeVlan`
  - `removeVlanEncapsulation`

### Line Scope

- Added the following commands:
  - `login.disable`
  - `login.enable`
  - `login.setType`
  - `password.disable`
  - `password.enable`
  - `transport.input.disable`
  - `transport.input.enable`
  - `transport.output.disable`
  - `transport.output.enable`

### Pool Scope

- Added the following commands:
  - `setDefaultRouter`
  - `setDnsServer`
  - `setNetworkAddress`

### VLAN Scope

- Added the following commands:
  - `setName`

## 0.0.1

- Initial version.
