#!/bin/bash -ex
yum -y update 
mkdir /home/ec2-user/.aws 
cat > /home/ec2-user/.aws/config <<EOF
[default]
region = us-west-2
EOF
chown -R ec2-user:ec2-user /home/ec2-user/.aws
cd /home/ec2-user
yum -y install php
wget https://aws-tc-largeobjects.s3.us-west-2.amazonaws.com/CUR-TF-100-RESTRT-1/188-lab-JAWS-resources-tagging/s3/aws-tools.zip
unzip /home/ec2-user/aws-tools.zip
chown -R ec2-user:ec2-user /home/ec2-user/aws-tools
chown -R ec2-user:ec2-user /home/ec2-user/aws-tools.zip
chmod 740 /home/ec2-user/aws-tools/stopinator.php
chmod 740 /home/ec2-user/aws-tools/terminate-instances.php
mv /home/ec2-user/aws-tools/change-resource-tags /home/ec2-user/change-resource-tags.sh
chmod 740 change-resource-tags.sh
chown -R ec2-user:ec2-user change-resource-tags.sh
/opt/aws/bin/cfn-signal -e $?          --stack c72582a1461991l3960709t1w757821890052         --resource CLIEC2Instance          --region us-west-2