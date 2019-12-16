# apache-tika-lambda-layer
> AWS Lambda layer containing latest Apache Tika

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version
ARN" and enter the following ARN.

```
arn:aws:lambda:us-east-1:764866452798:layer:apache-tika:1
```

Current version of Apache Tika is `1.23`. More information: https://tika.apache.org/

## What is the path to Apache Tika `.jar` file inside of Lambda when I attached the layer?

You can find it at `opt/tika-server-1.23.jar` (`opt` is a location where lambda unpacks layers).

## Available regions

* us-east-1

## Update

1. Go to https://tika.apache.org/download.html, download Apache Tika server `runnable jar`.
2. Create zip archive of Apache Tika server with the filename `apache-tika.zip`
3. Put zip archive into this repo
3. Put proper version inside of `publish.sh`
4. Commit & Create Pull Request

## License

MIT © [Shelf](https://shelf.io)
