# Virtual Private Cloud (VPC)

- AWS **Virtual Private Cloud (VPC)** helps to provision a logically isolated section of AWS cloud, where you can launch AWS resources in a virtual network you define (and completely control).
- We could create 2 types of VPCs: default VPC and custom VPC.
- **VPC peering:** connect one VPC with another via a direct network route using private IP addresses. This make instances behave as if they were on the same private network.
	- Currently, VPC peering only allows star configuration, no transitive peering.
- SGs are stateful, while network ACLs are stateless.
- All resources in the same subset must be in the same AZ.
- Within each subset, 5 IP addresses are reserved.
- To balance the usage, AWS randomizes the names of the AZs for each region.
