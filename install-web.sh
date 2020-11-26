#!/bin/bash
sudo su -
/bin/sleep 10
sudo yum install subscription-manager -y
/bin/sleep 30
mkdir iautomatedir     
cd iautomatedir
gsutil cp gs://dryice-dmpoc/awx-installation.sh .
/bin/sleep 10
sudo subscription-manager register --username hcl_noida_cfs_cloud --password 'Q@zxsw@!@#$%67890'  --force
chmod 777 awx-installation.sh
./awx-installation.sh