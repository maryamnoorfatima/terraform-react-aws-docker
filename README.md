# Terraform AWS React Docker Project

This project automates the deployment of a **React frontend** application to **AWS EC2** using **Terraform** and **Docker**.

---

##  Tech Stack

- **Frontend:** React.js  
- **Infrastructure as Code:** Terraform  
- **Containerization:** Docker  
- **Cloud Provider:** AWS (EC2, S3, IAM, etc.)


## Prerequisites

Make sure the following tools are installed:

```bash
# Node.js and npm (for React app)
node -v
npm -v

# Docker (for containerization)
docker --version

# Terraform (for infra deployment)
terraform -version

# AWS CLI (for cloud configuration)
aws configure
```


## React App Setup

### 3. Install Dependencies

```bash
cd react-app
npm install
```

### 4. Build the App

```bash
npm run build
```

This creates a production build inside the `react-app/build` folder.

---

##  Docker Setup

### 5. Dockerize the App

From the root folder, run:

```bash
docker build -t react-app .
```

### 6. Run Docker Container

```bash
docker run -d -p 3000:80 react-app
```

Visit `http://localhost:3000` to view the app locally.

---

## ☁️ Deploy to AWS with Terraform

### 7. Set Up Terraform

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

This will create an EC2 instance and configure your infrastructure.

---

##  Access the EC2 Server

```bash
ssh -i "your-key.pem" ec2-user@<EC2_PUBLIC_IP>
```

---

## Install Docker on EC2

```bash
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
```

---

##  Transfer App to EC2

Use `scp` or push Docker image to DockerHub and pull from EC2:

```bash
docker run -d -p 80:80 react-app
```

Visit the app at:  
**http://<EC2_PUBLIC_IP>**

---

##  Cleanup

To destroy AWS resources created by Terraform:

```bash
cd terraform
terraform destroy
```

---
