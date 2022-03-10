import 'package:cisco_ios_dsl/src/util/cidr_to_mask.dart';

class IPv4 {
	final String mask;
	final String ip;

	IPv4.fromMask(this.ip, this.mask);
	IPv4.fromCidr(this.ip, int cidr)
		: mask = cidrToMask(cidr);
	IPv4.noMask(this.ip)
		: mask = '';
}
