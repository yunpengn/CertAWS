# Miscellaneous

- In this section, we are going to look at many other services that AWS provides. They cannot be put into any other category exactly. Thus, we put them here for reference.

## Simple Queue Service (SQS)

- SQS is a web service which provides a distributed, fault-tolerant message queue.
- Similar to other message queues, SQS helps to decouple the components of a complex system and serves as a temporary buffer.
- The body of a message in SQS can contain up to 256KB of text in any format.
- SQS provides two kinds of queues:
	- **Standard queue (default):** nearly-unlimited number of transactions per second, messages would be delivered at least once, provide best-effort ordering only;
	- **FIFO queue:** only up to 300 transactions per second, FIFO (first in first out), exactly-once processing.
- SQS is **pull-based**, not push-based.
- Messages can be kept in SQS from 1 minute to 14 days, with default retention period of 4 days.
- To best-effort avoid duplicate processing, SQS introduces the concept of **visibility timeout**. When a message gets picked up by one instance, it will be invisible to other instances until timeout (thus, that process shall delete it from SQS if the processing completes before timeout).
- SQS also provides **long polling**, which does not return a response until a message arrives, or the polling times out.

## Simple Work Flow (SWF)

- SWF is a web service that helps to coordinate	work across distributed application components.
- Workflow executions in SWF can last up to 1 year.
- SWF ensures that a task is assigned only once and is never duplicated.
- Tasks in SWF represent invocations of various processing steps in an application which can be performed by executable code, remote calls, and even human actions and others.
- SWF involves different actors in a workflow execution:
	- Workflow starter: an application that initiates a workflow;
	- Decider: controls the flow of activity tasks in an execution;
	- Activity worker: carries out the activity tasks.
- SWF is similar to the finite state machine (FST) pattern.

## Simple Notification Service (SNS)

- SNS is a web service which helps to send notification from the cloud.
	- It allows to send push notifications to Apple, Google, FireOS, Windows devices;
		- It reaches Android devices in China via Baidu Cloud Push.
	- It can also send SMS text messages or email;
	- It can push SQS queues;
	- It can call any HTTP endpoint as well.
- Recipents of SNS notifications can be grouped using topics.
- Different from SQS, SNS is push-based (rather than pull-based).

## Elastic Transcoder

- Elastic Transcoder is a media transcoder in the cloud.
	- Basically, it helps to convert media files to different formats.
- The price is calculated based on the minutes of transcode process and the resolution of the transcode process.
- Elastic Transcoder provides transcoding presets for popular output formats.

## API Gateway

- 
