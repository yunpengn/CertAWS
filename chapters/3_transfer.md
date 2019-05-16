# Data Transfer

AWS offers a wide range of options for data transfer. You should choose the appropriate one depending on the use case, such as the amount of the data, the frequency of transfer, etc.

## CloudFront (CF)

- A **content delivery network (CDN)** is a system of distributed servers that deliver content to a user based on his/her geographic location.
- **CloudFront (CF)** is AWS-hosted CDN, which concentrates around 2 terminologies:
	- **Edge location:** the location where content will be cached. There are much more edge locations available than AZs;
		- Edge locations are NOT read-only. You can write to them as well. For example, it can be used to achieve transfer acceleration for S3 buckets (so that users can upload files faster);
		- Objects are cached for a certain time called **time to live (TTL)**. However, you can clear cached objects before they are expired (but you will be charged additionally).
	- **Origin:** the origin (either S3, EC2, ELB or Route53) of the content to be distributed;
	- **Distribution:** the collection of all edge locations used to deliver the given content.
- CF mainly have a few usages:
	- Static website, such as those built with [Angular.js](https://angular.io), [React.js](https://reactjs.org);
		- CF even allows to specify error pages (for example, which page should be displayed for `404`).
	- Large file distribution (download);
	- RTMP (for media streaming).

## Snowball & Snowmobile

- **Snowball** and **Snowmobile** are both data transfer services for massive amount of data.
	- Each **Snowball** comes in either a 50TB or 80TB size;
	- Each **Snowball Edge** comes in a 100TB size. It can additional provide compute capacities _(can be used as a mini, mobile-version AWS)_;
	- Each **Snowmobile** can transfer up to 100PB, using a 45-foot shipping container.
- A typical use case for both would be to help traditional enterprises move to the cloud. Such organizations may already have an established business for years and have accumulated a huge amount of data. Given the size of the amount, it is almost impossible to transfer to AWS using (even high-speed) network.

## Storage Gateway

- There are 3 different types of storage gateway:
	- **File Gateway (NFS):** store objects in S3 buckets, and access through a network file system (NFS) mount point;
	- **Volume Gateway (iSCSI):** asynchronously back up volumes as point-in-time snapshots (as EBS snapshots in AWS). These snapshots are incremental back-ups and compressed to save space;
		- **Stored volumes:** store all data primarily at local, while asynchronously back up to AWS;.
		- **Cached volumes:** store all data primarily in S3, but retain frequently accessed data in local storage gateway.
	- **Tape Gateway (VTL):** archive data in AWS with low cost using virtual tape library (VTL).
