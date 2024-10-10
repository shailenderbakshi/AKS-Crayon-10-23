# AKS App Deployment with Azure DevOps

This repository contains a simple Node.js application that is containerized with Docker and deployed to Azure Kubernetes Service (AKS) using Azure DevOps pipelines.

## Folder Structure

- `/src` - Application source code
- `/docker` - Dockerfile for containerizing the application
- `/manifests` - Kubernetes deployment files
- `/pipelines` - Azure DevOps pipeline configuration
- `/docs` - Documentation files

## Getting Started

1. Configure Azure DevOps with your ACR, AKS resource group, and cluster.
2. Commit the files to your repository and run the pipeline.