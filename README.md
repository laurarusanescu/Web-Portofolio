## Overview

This project demonstrates how to deploy a containerized application to a Kubernetes (K8s) cluster running on Google Cloud Platform (GCP). The application source code is maintained in this repository, and the deployment process is automated using GitLab CI/CD pipelines.

## Project Structure

- **`k8s/`**: Contains Kubernetes deployment and service YAML files for the application.
- **`src/`**: Source code for the application.
- **`tf/`**: Terraform scripts for provisioning infrastructure.
- **`.gitlab-ci.yml`**: GitLab CI/CD pipeline configuration for building, and deploying the application.
- **`Dockerfile`**: Dockerfile used to build the application's container image.
- **`README.md`**: Project documentation.


