# DS Seminar Terraform Demo

Code for a demo given at the [Data Science Seminar](https://massmutual.atlassian.net/wiki/spaces/AAP/pages/781320369/Weekly+Seminar) talk on 2/21/2020.

Motivate by the title of [My data scientist doesn’t know how to properly start an EC2 instance](https://towardsdatascience.com/my-data-scientist-doesnt-know-how-to-properly-start-an-ec2-instance-b1b9f4920359).

## 1. Set up AWS credentials

cd ~/tools/aws/aws-infra
source env/nonprd.sh
cd ~/projects/2020/02-tf-demo

## 2. Set up TF templates

terraform init && terraform get
terraform plan -var-file=".env/dev.tfvars"

## 3. Deploy