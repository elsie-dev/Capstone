
# DEPLOYING DOCKER IMAGE TO AWS EKS (Terraform, ECR,IAM)
 - Build the Dockerimage and pushed it to AWS ECR using Github actions

- Used AWS to set up credentials **aws configure**

- Terraform: Used to create eks cluster using terraform (**terraform init and terraform plan**)

1. Configure kubectl to Connect to an EKS Cluster

2. Configured kubectl to use AWS Kuberenetes cluster

3. Created deployment.yaml file and deployed to manifest file.

4. Deploying and verifying the application

5. Creating port-forward to access the deployed application


## PUSHING DOCKER IMAGE TO AWS ECR

From the dockerfile under microservice application, Github actions workflow file builds the image and pushes tol AWS ECR repository

Output: 

![ Deployed Image](https://github.com/elsie-dev/Capstone/blob/main/screenshots/capstone%20image.jpeg)



## ANSIBLE VAULT AND PLAYBOOK

Adding prometheus and grafana using Helm

```helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts```

**Creating  a new namespace**

kubectl create namespace monitoring

**Install Prometheus**

helm install prometheus prometheus-community/kube-prometheus-stack --namespace monitoring

**Accesing prometheus GUI**

kubectl port-forward prometheus-kube-prometheus-stack-prometheus-0 9090

**Install Grafana**
helm install grafana grafana/grafana --namespace monitoring


## MONITOR EKS ClUSTER USING PROMETHEUS.

## SETTING UP LET'S ENCRPT CERTIFICATE
- Ingress Controller (ingress.yaml)
- Obtain SSL Certficate
```

**Output:**

![Image](https://github.com/elsie-dev/Capstone/blob/main/screenshots/capstone2image.jpeg)

