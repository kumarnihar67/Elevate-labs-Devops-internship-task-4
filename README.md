🚀 Terraform + Docker IaC Project
🧩 Task Overview

Objective:
Provision a local Docker container using Terraform — demonstrating the concept of Infrastructure as Code (IaC).

Tools Used:

Terraform

Docker Desktop

Visual Studio Code

Windows PowerShell / Command Prompt

Deliverables:

main.tf — Terraform configuration file

Execution logs (from terraform init, plan, apply, destroy)

Screenshots of successful provisioning

README.md (this document)

🧠 What I Did

This project demonstrates how to use Terraform to automate the provisioning of infrastructure—in this case, a simple Nginx web server running inside a Docker container on my local machine.

Instead of manually running Docker commands, Terraform was used to define, deploy, and destroy the container through declarative configuration.

🛠️ Step-by-Step Process
1️⃣ Setup

Installed and verified:

terraform -version
docker version


Ensured Docker Desktop was running on Windows.

2️⃣ Created Terraform Configuration (main.tf)
<img width="1920" height="1080" alt="task4 1" src="https://github.com/user-attachments/assets/140fe866-0626-4af5-97c2-526b00b57244" />
<img width="1920" height="1080" alt="task4 2" src="https://github.com/user-attachments/assets/2c098853-98f7-40c9-a9cf-531765a55107" />


3️⃣ Initialized Terraform
terraform init
<img width="1920" height="1080" alt="task4 3" src="https://github.com/user-attachments/assets/1c7a4800-5578-4464-b6df-78b3f5a71e01" />


Downloaded the Docker provider

Created local .terraform folder

4️⃣ Planned Deployment
terraform plan


Output showed resources to be created:

Plan: 2 to add, 0 to change, 0 to destroy

5️⃣ Applied Configuration
terraform apply
<img width="1920" height="1080" alt="task4 5" src="https://github.com/user-attachments/assets/d145477b-f8e1-4bc7-8c9f-dc0bbf02708b" />


After typing yes, Terraform:
<img width="1920" height="1080" alt="task4 6" src="https://github.com/user-attachments/assets/85a1ae4f-2770-4ed9-921f-81bfca362f72" />

Pulled the nginx:latest Docker image

Created and started the container

Exposed it on http://localhost:8081

✅ Verified the running container:

docker ps


Output:

CONTAINER ID   IMAGE          COMMAND                  PORTS                  NAMES
abcd1234efgh   nginx:latest   "/docker-entrypoint.…"   0.0.0.0:8081->80/tcp   terraform-nginx
<img width="1920" height="1080" alt="task4 9" src="https://github.com/user-attachments/assets/6375a913-4891-41f1-86f5-a38231b483f6" />


6️⃣ Verified Output

Opened browser → http://localhost:8081

Result: Nginx welcome page displayed successfully.
<img width="1920" height="1080" alt="task4" src="https://github.com/user-attachments/assets/a27ff796-3653-4121-9a6d-1c8f7b5ee480" />

7️⃣ Terraform State Commands
To inspect Terraform-managed resources:
terraform state list
Output:
docker_container.nginx_container
docker_image.nginx_image
<img width="1920" height="1080" alt="task4 7" src="https://github.com/user-attachments/assets/cf08ba13-bfcb-4b7a-b169-25455d1e4a1e" />


8️⃣ Destroyed Infrastructure

When testing completed:

terraform destroy
<img width="1920" height="1080" alt="task4 8" src="https://github.com/user-attachments/assets/13fcf80a-4d97-4047-8696-51284543846b" />


Typed yes to confirm → Docker container and image removed.
