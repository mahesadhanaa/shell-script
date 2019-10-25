aws ec2 create-security-group --group-name mhs-sg --description "My security group"
aws ec2 create-security-group --group-name EC2SecurityGroup --description "Security Group for EC2 instances to allow port 22"
aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp --port 22 --cidr 0.0.0.0/0
aws ec2 describe-security-groups --group-names EC2SecurityGroup
aws ec2 run-instances --image-id ami-5ec1673e --key-name MyKey --security-groups EC2SecurityGroup --instance-type t2.micro --placement AvailabilityZone=us-east-2a --block-device-mappings DeviceName=/dev/sdh,Ebs={VolumeSize=100} --count 2 --user-data file://vm-script.txt
vbvbdf
