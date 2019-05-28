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

## ElasticCache

- **ElasticCache** is a web service that provide cloud-hosted, AWS-managed in-memory cache. It provides two caching engines, **MemCached** and **Redis**.
- Using **ElasticCache** and **read replicas** are two major methods to improve database performance on AWS.

## NoSQL Databases

- **DynamoDB** is the NoSQL database invented by AWS.
