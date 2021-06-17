# certbot-ssl

The Main Agenda here is to provide guidance on rotating wildcard SSL certificates provisioned through Letsencrypt - Certbot. Okay, to get an idea of how all this works: We have provisioned and stored our SSL certificate in the S3 bucket and when our application starts, it will download the certificates from the bucket and configure the webservers.

Steps:

1. Provision the SSL certificate with Letsencrypt - Certbot.
2. Upload the provisoned certificate to S3 bucket
3. Redepoy to rotate the certificate

Steps 1: 

    1. Clone this repository
    
    2. Go to the root directory 
    
    3. Run "docker-compose build" - Build will start 
    
    4. Once the build is finished run "docker-compose up" - to start the container
    
    5. In a new terminal run "docker ps" - to list the running containers. Our container will be listed. Note its container ID
    
    6. Now run "docker exec -it <conatiner-id> bash"- to SSH into the container
    
    7. Inside the container run "certbot certonly --manual --preferred-challenges dns -d <domain-name> --agree-tos --email <contact-email>" - to start the certificate provisioning process.
    
    8. It will promt you to add TXT record in your DNS setting. Once you have added the TXT record, please verify that the TXT recored you just added has propogated. Then, press ENTER to continue. 
    
    9. Once Certbot validates the TXT record, your certificates will be provisoned. With the Use of Docker Volumes we have mapped our current directory to the provisoned certificates, So now, our certificates must be listed in our current directory. 
    
    10. Upload this new certificates to the appropriate S3 bucket.

Step 2: Upload the certificate to S3 
    
Step 3: Redeploy to rotate the certificate
