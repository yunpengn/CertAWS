# CloudWatch

- CloudWatch is a monitoring service to monitor all resources & application running on AWS.
- CloudWatch is primarily used to monitor performance, including but not limited to:
	- Compute: EC2 instances, ASG, ELB, Route53 health checks;
	- Storage: EBS, storage gateway;
	- Content delivery: CloudFront.
- CloudWatch include host-level metrics such as CPU, network, disk and status check.
- CloudWatch is different from **CloudTrial** or **AWS Config**:
	- **CloudWatch:** can be used as an application log service;
	- **CloudTrail:** an audit log service that records down all API calls to any AWS resource;
	- **AWS Config:** set configurations rules that your AWS resources need to comply with, and records down the changes to the configurations of any AWS resource in an S3 bucket.
- CloudWatch will monitor events related to EC2 instances every 5 minutes by default.
	- By turning on detailed monitoring (with an additional charge), this can be changed to every 1 minute.
- CloudWatch alarms can be created to send notifications.
	- You can create a _billing alert_ in CloudWatch.
- CloudWatch stores historical statistics for a period of 15 months.

## AWS CLI

- AWS CLI achieves almost the same set of functionalities as the AWS management console.
- AWS CLI access need to be set up through IAM.
