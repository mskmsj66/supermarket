Application Deployment as a container using ansible
1. run the build.sh file to generate .jar file
2. build docker image using the docker build command 
   build -t supermarket -f Dockerfile .
3. Tag the image using the docker tag command 
     docker tag supermarket sudhirm0606/supermarket
4. Push the docker image into ecr repo
    docker push  sudhirm0606/supermarket
5. Deploy applition in EC2 using the ansible play book
   ansible-playbook -i inventory deployment.yaml

CDN implementaion
1.Create a CloudFront Distribution aws cloudfront create-distribution \
  a.origin-domain-name your-load-balancer-DNS-name \
  b.default-root-object index.html \
  c.default-cache-behavior '{"TargetOriginId":"1","ForwardedValues":{"QueryString":true,"Cookies":{"Forward":"all"},"Headers":["Accept","Origin"]},"ViewerProtocolPolicy":"redirect-to-https","MinTTL":0,"AllowedMethods":["GET","HEAD","OPTIONS"],"SmoothStreaming":false,"DefaultTTL":86400,"MaxTTL":31536000,"Compress":false,"FieldLevelEncryptionId":""}'
  
2.After the CloudFront distribution is deployed and the DNS records have propagated, test your application by accessing it through the CloudFront URL.
3.Update your DNS records to point to the CloudFront distribution.

Pre-requisites 
1. VPC should be Configure
2. Internet gateways should be attached to the VPC
3. Subnet should be created
4. routing pollocies ans subnet should be assositaed 
5. Security group should be created and port 8080 allow to all.
6. EC2 instance should be created with a ubantu image and the security group should be attached

To deploy application in EC2 instance using Ansible as a IcA 
1. Create a IAM account with a tocken aws_account_id
 
Configure AWS CLI in local 
AWS config 
AWS userkey(userkey)
AWS token(enrter the token id)
AWS region 
 
