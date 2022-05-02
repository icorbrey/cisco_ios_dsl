/// An IPv6 network address.
class IPv6 {

  /// This address's IP.
	final String ip;
  
  /// This address's CIDR value.
	final int cidr;

  /// Creates an IPv6 address with the given CIDR value.
	IPv6.fromCidr(this.ip, this.cidr);

  /// Creates an IPv6 address without a CIDR value.
	IPv6.noMask(this.ip)
		: cidr = -1;
}
