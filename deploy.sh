#!/usr/bin/env bash

pip install requests==2.24.0 --target=./code

aws cloudformation package --template-file ./main.yaml \
                           --s3-bucket cf-templates-xtax1n0zw1x2-eu-west-2 \
                           --output-template-file main.packaged.yaml \
                           --profile dev-obs

aws cloudformation deploy --template-file ./main.packaged.yaml \
                          --stack-name rl-test-python \
                          --capabilities CAPABILITY_NAMED_IAM \
                          --profile dev-obs
