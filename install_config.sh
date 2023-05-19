#!/bin/bash
sudo aws s3 cp s3://<bucket-name>/<environment_file>.env /var/www/html/.env
