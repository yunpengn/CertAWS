# Serverless Architecture

- Serverless is a cloud-computing execution model which developers do not need care about the allocation of hardware resources (which will be managed by cloud providers).

## Lambda

- Lambda functions can be used in mainly two ways:
	- **Event-driven compute service:** code is run in response to events, such as changes in S3 bucket or DynamoDB table;
	- **Normal compute service:** code is run in response to HTTP requests via API Gateway (or AWS SDKs).
- It is important to understand the tradeoff between **traditional architecture** vs **serverless architecture**.
	- **Traditional architecture (but on the cloud):** ELB + EC2 + RDS (MySQL or PostgreSQL);
	- **Serverless architecture:** API Gateway + Lambda + Aurora (or DynamoDB).
- The pricing model of lambda functions is based on the number of requests + the compute duration.
- Lambda scales out (but not scale up) automatically.
- AWS X-ray can help to debug lambda functions when the architecture goes too complex.

## Alexa

- Alexa is a cloud-based voice service provided by AWS.
- It is possible to build custom skills for Alexa, which can then trigger lambda functions to perfom powerful actions.
