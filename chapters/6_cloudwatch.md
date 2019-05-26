# CloudWatch

- CloudWatch is a monitoring service to monitor all resources & application running on AWS.
- CloudWatch is primarily used to monitor performance, including but not limited to:
	- Compute: EC2 instances, ASG, ELB, Route53 health checks;
	- Storage: EBS, storage gateway;
	- Content delivery: CloudFront.
- CloudWatch include host-level metrics such as CPU, network, disk and status check.
- CloudWatch is different from **CloudTrial**, which uses audit logs to record down all actions done via AWS management console or AWS APIs.
- CloudWatch will monitor events related to EC2 instances every 5 minutes by default.
	- By turning on detailed monitoring (with an additional charge), this can be changed to every 1 minute.
- CloudWatch alarms can be created to send notifications.
	- You can create a _billing alert_ in CloudWatch.

## AWS CLI

- AWS CLI achieves almost the same set of functionalities as the AWS management console.
- AWS CLI access need to be set up through IAM.
