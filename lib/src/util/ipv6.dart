class IPv6 {
	final int cidr;
	final String ip;

	IPv6.fromCidr(this.ip, this.cidr);
	IPv6.noMask(this.ip)
		: cidr = -1;
}
