# 4640-w7-lab-start-w25

Commands used for lab 7.
1. making ssh key 
```ssh-keygen -t rsa -b 4096 -f ~/.ssh/aws -C "AWS"```
2. clone gitlab repo, then cd to that directory
3. in scripts folder, there are two scripts, import_key, and delete_key.
4. to use import_key script, do `./import_lab_key ~/.ssh/aws.pub`
Should generate a key_data file and add a key to your AWS account
5. cd into the terraform folder.
6. `terraform init terraform plan terraform apply` to create the VM and stuff
7. add and change code in host.yml file and playbook.yml according to requirements.
8. to check for syntax errors in your playbook, `ansible-playbook playbook.yml --syntax-check`
9. now `ansible-playbook playbook.yml` to run ansible. Should work with conf files and stuff.
10. check to see if website is on, use your dns that has been generated.
![image1](./Screenshot%202025-02-19%20045230.png)
![image2](./Screenshot%202025-02-19%20045254.png)

