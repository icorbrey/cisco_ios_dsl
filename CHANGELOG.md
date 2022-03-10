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
