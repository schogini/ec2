ami="ami-099fe766"
#ami="ami-bef6b7d1" # Custom

aws ec2 run-instances \
--region ap-south-1 \
--image-id $ami \
--count 1 \
--instance-type t2.micro \
--key-name SreeDemoKey \
--user-data file://./user-data1-mysql.txt \
--security-groups Sree-Demo-SG-All-IP-Open
