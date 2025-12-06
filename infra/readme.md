# Terraform infra for castle app

This Terraform config uses the kreuzwerker/docker provider to:
- Build the Docker image from the project Dockerfile
- Run a Docker container exposing port 8080

Prerequisites:
- Docker daemon running locally (Docker Desktop / Docker Engine)
- Terraform 1.x installed

Commands:

# initialize (installs provider)
terraform init

# preview
terraform plan

# apply (creates the image + container)
terraform apply

# destroy when done
terraform destroy