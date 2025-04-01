# 4640-w13-lab-start-w25

See D2L for lab instructions

The state file appears locally when you terraform init, but appears in the bucket when you terraform apply
The Lock file will appear when you are trying to update or delete terraform configurations. In my case, it appeared in my S3 bucket when i terraform destroy. It will disappear from the bucket when the modifications to the terraform state has been applied.
No, the lock file will disappear from the S3 bucket when the apply or modifications are complete.

![screenshot 1](./Screenshot%202025-04-01%20153531.png)
![Screenshot 2](./Screenshot%202025-04-01%20153618.png)