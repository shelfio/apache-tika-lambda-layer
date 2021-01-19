# Apache Tika for AWS Lambda as a layer

> AWS Lambda layer containing the latest [Apache Tika Server](https://tika.apache.org/)

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version
ARN" and enter the following ARN.

```
arn:aws:lambda:us-east-1:764866452798:layer:apache-tika:5
```

Current version: [1.25](https://tika.apache.org/1.25/index.html)

## How can I use it with the Lambda runtime which doesn't have Java installed?

The latest Apache Tika version requires Java 8 to be able to work. 

If your runtime doesn't have Java installed, you can use [Java 8 Lambda layer](https://github.com/shelfio/java-lambda-layer), which actually was designed to make Apache Tika work on Node.js 12.x runtime.

## Where can I find Apache Tika `.jar` file inside of Lambda when I attached the layer?

You can find it at `/opt/tika-server.jar` (`/opt` is where Lambda unpacks layers).

## Available regions

* ap-northeast-1: `arn:aws:lambda:ap-northeast-1:764866452798:layer:apache-tika:1`
* ap-northeast-2: `arn:aws:lambda:ap-northeast-2:764866452798:layer:apache-tika:1`
* ap-south-1: `arn:aws:lambda:ap-south-1:764866452798:layer:apache-tika:1`
* ap-southeast-1: `arn:aws:lambda:ap-southeast-1:764866452798:layer:apache-tika:1`
* ap-southeast-2: `arn:aws:lambda:ap-southeast-2:764866452798:layer:apache-tika:1`
* ca-central-1: `arn:aws:lambda:ca-central-1:764866452798:layer:apache-tika:1`
* eu-north-1: `arn:aws:lambda:eu-north-1:764866452798:layer:apache-tika:1`
* eu-central-1: `arn:aws:lambda:eu-central-1:764866452798:layer:apache-tika:1`
* eu-west-1: `arn:aws:lambda:eu-west-1:764866452798:layer:apache-tika:1`
* eu-west-2: `arn:aws:lambda:eu-west-2:764866452798:layer:apache-tika:1`
* eu-west-3: `arn:aws:lambda:eu-west-3:764866452798:layer:apache-tika:1`
* sa-east-1: `arn:aws:lambda:sa-east-1:764866452798:layer:apache-tika:1`
* us-east-1: `arn:aws:lambda:us-east-1:764866452798:layer:apache-tika:5`
* us-east-2: `arn:aws:lambda:us-east-2:764866452798:layer:apache-tika:1`
* us-west-1: `arn:aws:lambda:us-west-1:764866452798:layer:apache-tika:1`
* us-west-2: `arn:aws:lambda:us-west-2:764866452798:layer:apache-tika:1`

## Update

1. Go to https://tika.apache.org/download.html, download Apache Tika server `runnable jar`
2. Rename the jar file from `tika-server-x.xx.jar` to `tika-server.jar`
3. Create zip archive of Apache Tika server with the filename `tika-server.zip`
4. Put zip archive into this repo
5. Put proper version inside of `publish.sh`
6. Commit & Create Pull Request

## License

MIT © [Shelf](https://shelf.io)
