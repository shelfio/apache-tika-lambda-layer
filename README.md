# apache-tika-lambda-layer
> AWS Lambda layer containing latest Apache Tika

## Getting Started

Click on Layers and choose "Add a layer", and "Provide a layer version
ARN" and enter the following ARN.

```
arn:aws:lambda:us-east-1:764866452798:layer:apache-tika:1
```

Current version of Apache Tika is `1.23`. More information: https://tika.apache.org/

## Available regions

* ap-northeast-1
* ap-northeast-2
* ap-south-1
* ap-southeast-1
* ap-southeast-2
* ca-central-1
* eu-north-1
* eu-central-1
* eu-west-1
* eu-west-2
* eu-west-3
* sa-east-1
* us-east-1
* us-east-2
* us-west-1
* us-west-2

## Update

1. Go to https://tika.apache.org/download.html, download Apache Tika `runnable jar`.
2. Create zip archive of Apache Tika app in the `bin` folder with the filename `apache-tika.zip`
3. Put zip archive into this repo
3. Put proper version inside of `publish.sh`
4. Commit & Create Pull Request

## License

MIT © [Shelf](https://shelf.io)
