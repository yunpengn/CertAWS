# Databases on AWS

- AWS provides a wide range of database services, including the traditional relational databases (RDBMS), NoSQL databases, in-memory cache, etc.
- Database services shall choose provisioned IOPS SSD (`io1`) as its underlying storage layer.

## Relational Database Service (RDS)

- Relational Database Service (RDS) mainly has two important features: **multi-AZ (for disaster recovery)** & **read replica (for performance)**.
- There are 3 typical use cases of RDS:
	- **Online transaction processing (OLTP):** real-time processing for business data, where queries usually run on a single row of record;
	- **Online analytical processing (OLAP):** post-event analytics to help with decision making, where queries usually run on a large set of records;
	- **Data warehouse:** used for business intelligence (BI), could contain very complex and extremely large datasets, could help to perform analysis for historical data.
- AWS RDS provide a wide variety of database engines:
	- **For OLTP databases:** _MySQL_, _PostgreSQL_, _Microsoft SQL Server_, _MariaDB_,_Oracle_, _Aurora_ (invented by AWS);
	- **For OLAP databases and data warehouses:** _Redshift_ (invented by AWS).
- RDS is not a serverless technology. It is simply an AWS-managed database.
- Patching & upgrading of RDS underlying OS and database software is controlled by AWS.
	- However, Aurora Serverless is serverless.
- RDS provides two backup mechanisms:
	- **Automated backups:** store daily snapshots for the retention period (1 to 35 days) in S3. When there is a need for disaster recovery, RDS picks the last snapshot and applies transaction logs until the point of failure.
	- **Database snapshots:** snapshots initiated by users manually, stored in S3 even after the RDS instance is deleted.
	- No matter via automated backup or manual snapshot, the restored database will be on a new RDS instance with a new DNS endpoint.
- All RDS engines support encryption at rest, done using AWS KMS.
- **Multi-AZ** achieves data replication synchronously, while read replica achieves that asynchronously.
- Automated backups must be turned on in order to deploy a read replica _(so that replication can be done via transaction logs)_.
- Read replicas can be deployed in different regions, and can be promoted to master when necessary.

### Redshift

- AWS **Redshift** is a fast, fully-managed, PB-scale data warehouse service in the cloud.
- Data warehouse databases apply a different architecture from both database layer and infrastructure layer.
- Redshift can have 2 possible configurations:
	- Single node mode, can store up to 160GB of data;
	- Multi-node mode, consisting of 1 leader node and up to 128 compute nodes.
- Redshift uses advanced column-based compression techiques to save storage space. It automatically samples the data and chooses the most appropriate compression schema when data is loaded to an empty table.
- Redshift supports **massively parallel programming (MPP)**, which automatically distributes data and query load across all nodes (similar to the concept of map-reduce).
- Redshift comes with backups enabled by default with a retention period of 1 - 35 days (by default 1 day).
	- The snapshots can be additionally replicated to another region for DR.
- Redshift always attempts to store at least 3 copies of data (the original copy, the replica on compute nodes, and a backup in S3).
- The pricing model of Redshift is as follows:
	- Compute node hours: `# of hours` * `# of compute nodes` (leader node does not incur cost);
	- Backup (similar to that for RDS);
	- Data transfer (within the VPC).
- Redshift currently is only available within the same AZ, but its snapshots can be restored to another AZ.

### Aurora

- Aurora is a cloud-based RDBMS, compatible with MySQL/PostgreSQL, 5 times faster than MySQL, 10 times cheaper than commercial databases.
- Aurora maintains 2 copies of the data, each stored in 3 AZs.
	- The loss of up to 2 copies of the data will not affect write availability;
	- The loss of up to 3 copies of the data will not affect read availablity.
- Aurora's storage layer is self-healing. Its engine continously scans the underlying blocks and repairs automatically.
- Aurora can have up to 15 Aurora replicas (allow automated failovers) and up to 5 MySQL replicas.
- Aurora always enable automated backups and it does not affect its performance.

## ElasticCache

- **ElasticCache** is a web service that provide cloud-hosted, AWS-managed in-memory cache. It provides two caching engines, **MemCached** and **Redis**.
- Using **ElasticCache** and **read replicas** are two major methods to improve database performance on AWS.
- Redis supports multi-AZ and can do backups & restores.

## NoSQL Databases

- **DynamoDB** is the NoSQL database invented by AWS.
- Data in DynamoDB are stored in SSD and spread across at least 3 geographically distinct data centers.
- It supports both document model and key-value pair model.
- DynamoDB could be configured to have 2 consistency models:
	- **Eventual consistent read (default):** could reach best performance, consistency reached within 1 second;
	- **Strong consistent read:** could degrade performance, returns result only after all writes succeed.
