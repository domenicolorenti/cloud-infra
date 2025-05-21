# Cloud Infrastructure Project

This repository contains a complete DevOps project that demonstrates various cloud infrastructure and deployment techniques. The project includes a Node.js microservice, CI/CD pipeline, container orchestration with Kubernetes, and infrastructure as code using Terraform.

## Project Structure

```
.
├── app/                    # Node.js application
│   └── motus-users-ms/    # Users microservice
├── .github/               # GitHub Actions workflows
├── helm/                  # Helm charts for Kubernetes deployment
├── k8s/                   # Kubernetes manifests
├── terraform/             # Infrastructure as Code
└── scripts/              # Utility scripts
```

## Components

### 1. Node.js Microservice
The project includes a TypeScript-based Node.js microservice (`motus-users-ms`) that provides user management functionality. The service uses:
- Express.js for the web server
- MongoDB for data storage
- JWT for authentication
- TypeScript for type safety
- ESLint for code quality

### 2. CI/CD Pipeline
The project implements a CI/CD pipeline using GitHub Actions that:
- Builds the Node.js application
- Creates a Docker container
- Pushes the image to Google Container Registry (GCR)
- Deploys the application to a Kubernetes cluster

### 3. Kubernetes Deployment
The application is deployed to Kubernetes using:
- Helm charts for templated deployment
- Kubernetes manifests for custom resources
- ImagePullSecret for secure container registry access

### 4. Infrastructure as Code
The infrastructure is managed using Terraform, which provisions:
- Google Cloud Platform resources
- Kubernetes cluster
- Network configurations
- Service accounts and IAM roles

## Prerequisites

- Node.js (v14 or higher)
- Docker
- kubectl
- Helm
- Terraform
- Google Cloud SDK
- A Google Cloud Platform account

## Setup Instructions

### 1. Local Development
```bash
cd app/motus-users-ms
npm install
npm run dev
```

### 2. Building and Testing
```bash
npm run build
npm test
```

### 3. Infrastructure Setup
```bash
cd terraform
terraform init
terraform plan
terraform apply
```

### 4. Kubernetes Deployment
```bash
# Create ImagePullSecret
./scripts/create-imagepullsecret.sh

# Deploy using Helm
cd helm
helm install users-ms ./users-ms
```

## CI/CD Pipeline

The CI/CD pipeline is triggered on push to the main branch and:
1. Builds the application
2. Runs tests
3. Creates a Docker image
4. Pushes to GCR
5. Deploys to Kubernetes

## Infrastructure Management

The Terraform configuration in the `terraform/` directory manages:
- GCP project setup
- Kubernetes cluster creation
- Network configuration
- Service accounts and permissions

## Security

- ImagePullSecret is used for secure container registry access
- Service accounts with minimal required permissions
- Network policies for pod-to-pod communication
- Secrets management for sensitive data

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the ISC License.
