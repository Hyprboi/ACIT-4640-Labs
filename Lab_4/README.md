# 4640-w4-lab-start-w25
Matthew Chow A01079116 test

See lab instructions on D2L for details

1. Create a ssh key in your linux terminal. I used the command ssh-keygen -t ed25519 -f ~/.ssh/<key-name> -C "<commnet-to-identify-key>" 
which created a public key. It will print out a public key, that you would need to copy and paste into the ccloud-config.yaml file

2. in your cloud-config.yaml file, paste your ssh key into the ssh authorize line. add the packages nginx and nmap.

3. Download terraform and initialize with terraform init. This will create some files and folders needed for terraform to work.

4. make changes in the main.tf file. This will be the main terraform file where creating an ec2 instance and all the settings will be.

5. when all the configurations in the main.tf file is complete, validate terraform with terraform validate. This will check main.tf for any syntax errors.

6. Now that has been validated, create a plan with terraform plan -out <name>. This will create an outline of your configuration.

7. Now that a plan has been created, terraform apply will use that plan and start creating AWS EC2 instances. It will take a while.

8. When all the set up is complete, connect to your ec2 instance from the ip address or dns that it created with the ssh key from step 1.
