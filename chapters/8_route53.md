# DNS Service - Route53

- **DNS** stands for _domain name system_, which is used to convert domain names into respective IP addresses (either IPv4 or IPv6).
- A domain name could be suffixed with a top level domain name (and an additional second level domain name, usually the country domain). These top level domain names are controlled by _IANA (Internet Assigned Numbers Authority)_.
- All domains can be obtained through domain registrars, which are then registered into InterNIC (a service of ICANN) and store in a database called WhoIS.
- The query of each DNS request comes through: root record, name server (NS) record, start of authority (SOA) record.
- There are different types of DNS records, including:
	- **A record:** `A` stands for "address", the fundamental type, directly translates a domain name to the IP address;
	- **CNAME record:** `C` stands for "canonical", translates one domain name to another, cannot be used on naked domain names (zone apex record);
	- **Alias record:** map one domain name to another;
	- **MX record:** for "mail exchange" only;
	- **PTR record:** pointer records, for reverse DNS lookup.
- ELBs (elastic load balancers) do not have pre-defined IP addresses.

## Routing Policy

- Simple routing policy: can have one record with multiple IP addresses, which are returned to users in a random order.
- Weighted routing policy: allows to split traffic based on different weights assigned, which can be used together with _health check_. Route53 will remove those whose health check has failed.
- Latency routing policy: allows to route traffic based on the lowest network latency for the end user.
- Failover routing policy: used to create active/passive setup. Route53 uses a health check to monitor the primary site, and switches to the DR site if the primary site is down.
- Geo-location routing policy: allows to route traffic based on the geographic location of the end user.
- Geoproximity routing policy (traffic flow only): route traffic based on the geographic location of the resources and the end user, can adjust the routing by providing a _bias_.
- Multi-value answer routing policy: return multiple values (such as IP addresses), also able to specify health check for each resource.
