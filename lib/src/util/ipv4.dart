import 'package:cisco_ios_dsl/src/util/cidr_to_mask.dart';

/// An IPv4 network address.
class IPv4 {

  /// This address's IP.
	final String ip;

  /// This address's network mask.
	final String mask;

  /// Creates an IPv4 address with the given network mask.
	IPv4.fromMask(this.ip, this.mask);

  /// Creates an IPv4 address with the network mask that matches the given CIDR
  /// value.
	IPv4.fromCidr(this.ip, int cidr)
		: mask = cidrToMask(cidr);

  /// Creates an IPv4 address without a network mask.
	IPv4.noMask(this.ip)
		: mask = '';
}
