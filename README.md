# Apache Tika for AWS Lambda as a layer

> AWS Lambda layer containing the latest [Apache Tika Server](https://tika.apache.org/)

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version
ARN" and enter the following ARN.

```
arn:aws:lambda:us-east-1:764866452798:layer:apache-tika:1
```

| Layer ARN                                                 | Tika Version                                                             |
| --------------------------------------------------------- | ------------------------------------------------------------------------ |
| arn:aws:lambda:us-east-1:764866452798:layer:apache-tika:1 | [1.23](https://dist.apache.org/repos/dist/release/tika/CHANGES-1.23.txt) |

## How can I use it with the Lambda runtime which doesn't have Java installed?

The latest Apache Tika version requires Java 8 to be able to work. 

If your runtime doesn't have Java installed, you can use [Java 8 Lambda layer](https://github.com/shelfio/java-lambda-layer), which actually was designed to make Apache Tika work on Node.js 12.x runtime.

## Where can I find Apache Tika `.jar` file inside of Lambda when I attached the layer?

You can find it at `/opt/tika-server-1.23.jar` (`/opt` is where Lambda unpacks layers).

## Available regions

- us-east-1

## Update

1. Go to https://tika.apache.org/download.html, download Apache Tika server `runnable jar`.
2. Create zip archive of Apache Tika server with the filename `apache-tika.zip`
3. Put zip archive into this repo
4. Put proper version inside of `publish.sh`
5. Commit & Create Pull Request

## License

MIT © [Shelf](https://shelf.io)
