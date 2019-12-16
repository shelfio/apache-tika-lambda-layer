#!/usr/bin/env bash

TIKA_VERSION=1.23
LAYER_NAME='apache-tika'
LAYER_VERSION=1

LAYER_VERSION=$(
  aws lambda publish-layer-version --region "$TARGET_REGION" \
    --layer-name $LAYER_NAME \
    --zip-file fileb://apache-tika.zip \
    --description "Apache Tika v${TIKA_VERSION}" \
    --query Version \
    --output text
)

aws lambda add-layer-version-permission \
  --region "$TARGET_REGION" \
  --layer-name $LAYER_NAME \
  --statement-id sid1 \
  --action lambda:GetLayerVersion \
  --principal '*' \
  --query Statement \
  --output text \
  --version-number "$LAYER_VERSION"
