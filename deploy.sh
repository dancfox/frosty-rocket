#!/bin/bash

aws s3 cp ./ s3://frostyrocket.com/ --recursive --exclude ".git/*" --exclude "deploy.sh" --profile personal
aws cloudfront create-invalidation --distribution-id E1Q2DIFWU3QNJN --paths "/*" --profile personal
