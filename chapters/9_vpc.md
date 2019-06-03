# Virtual Private Cloud (VPC)

- AWS **Virtual Private Cloud (VPC)** helps to provision a logically isolated section of AWS cloud, where you can launch AWS resources in a virtual network you define (and completely control).
- We could create 2 types of VPCs: default VPC and custom VPC.
- **VPC peering:** connect one VPC with another via a direct network route using private IP addresses. This make instances behave as if they were on the same private network.
	- Currently, VPC peering only allows star configuration, no transitive peering.
- SGs are stateful, while network ACLs are stateless.
- All resources in the same subset must be in the same AZ.
- Within each subset, 5 IP addresses are reserved.
- To balance the usage, AWS randomizes the names of the AZs for each region.

## NAT Instance & NAT Gateway

- NAT Gateway should always be used over NAT instance due to its HA support.
- NAT instance is simply an EC2 instance with a special AMI, whose source & destination check is disabled.
	- An NAT instance itself must be in a public subnet.
	- In order to work, there must be a route out of the private subnet to the NAT instance.
- To create an AZ-independent architecture, create an NAT instance for each AZ and make sure resources in each AZ use the NAT gateway in the same AZ.

## Network ACL

- Network ACL has both ALLOW and DENY rules.
- Network ACL is stateless _(inbound rules and outbound rules are not symmetric)_.
- Network ACL evaluates its rules based on the priority assigned.
	- However, network ACL rules always have a higher priority than SG rules.
- Each VPC comes with a default ACL, which by default allows all inbound & outbound traffic.
- Each subset can only be associated with only 1 ACL at a time.
