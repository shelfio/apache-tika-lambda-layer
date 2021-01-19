#!/usr/bin/env bash

aws configure set default.region "$TARGET_REGION" --profile default

TIKA_VERSION=1.25
LAYER_NAME='apache-tika'
LAYER_DESCRIPTION="Apache Tika Server v${TIKA_VERSION}"
S3_BUCKET_NAME=shelf-lambda-layers-"$TARGET_REGION"
FILENAME="tika-server.zip"

aws s3 cp ./"$FILENAME" s3://"$S3_BUCKET_NAME"/"$FILENAME"

aws lambda add-layer-version-permission \
  --region "$TARGET_REGION" \
  --layer-name "$LAYER_NAME" \
  --statement-id sid1 \
  --action lambda:GetLayerVersion \
  --principal '*' \
  --version-number "$(
    aws lambda publish-layer-version \
      --region "$TARGET_REGION" \
      --layer-name "$LAYER_NAME" \
      --description "$LAYER_DESCRIPTION" \
      --query Version \
      --output text \
      --content S3Bucket="$S3_BUCKET_NAME",S3Key="$FILENAME"
  )"
