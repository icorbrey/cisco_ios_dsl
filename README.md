<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

A DSL for constructing Cisco IOS device configurations.

## Getting started

Add `cisco_ios_dsl` to your `pubspec.yaml`:

```yml
dependencies:
	cisco_ios_dsl: any
```

## Usage

This package is to be used as a helpful configuration builder for Cisco devices
that take IOS commands. Simply import the package and start using the `Device`
class, like so:

```dart
import 'package:cisco_ios_dsl/cisco_ios_dsl.dart';

void main() {

  const configPassword = 'config-password';
  const linePassword = 'line-password';

  const motd = 'Unauthorized access is strictly prohibited.';

  Device('router').enable((x) => x
    ..configure((x) => x
      ..setHostname('R1')
      ..setConfigPassword(configPassword)
      ..setMessageOfTheDay(motd)
      ..lines('vty 0 15', (x) => x
        ..password.enable(linePassword)
        ..login.enable()
      )
      ..line('console 0', (x) => x
        ..password.enable(linePassword)
        ..login.enable()
      )
      ..services.passwordEncryption.enable()
    )
    ..saveConfig()
  );
}
```

Running the file will give you the following output (with colored preambles):

```
router> enable
router# configure terminal
router(config)# hostname R1
R1(config)# enable secret config-password
R1(config)# banner motd #Unauthorized access is strictly prohibited.#
R1(config)# line vty 0 15
R1(config-line)# password line-password
R1(config-line)# login
R1(config-line)# exit
R1(config)# line console 0
R1(config-line)# password line-password
R1(config-line)# login
R1(config-line)# exit
R1(config)# service password-encryption
R1(config)# exit
R1# copy running-config startup-config 

R1# exit
```

To create a copy-pasteable script output, simply do the following:

```dart
// Instead of this...
Device('router').enable((x) => x);

// Do this!
Device.script('router').enable((x) => x);
```

The program now outputs an easily used script:

```
enable
configure terminal
hostname R1
enable secret config-password
banner motd #Unauthorized access is strictly prohibited.#
line vty 0 15
password line-password
login
exit
line console 0
password line-password
login
exit
service password-encryption
exit
copy running-config startup-config 

exit
```

> **Note:** This library does not take into account systems with pre-existing
> passwords.

## License

This action is released under the [BSD-3-Clause license][license].

[license]: https://github.com/icorbrey/cisco_ios_dsl/blob/master/LICENSE "View LICENSE in icorbrey/cisco_ios_dsl"
