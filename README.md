# Terraform Multi-Environment AWS Infrastructure

##  Overview

This project demonstrates how to use Terraform modules to deploy and manage infrastructure across multiple environments:

- **Development** (dev)
- **Staging** (stg)
- **Production** (prd)

The infrastructure is designed using a modular and reusable approach.

---

##  Architecture

Each environment uses the same Terraform module to provision:

- 🖥️ **EC2 Instances**
- 🪣 **S3 Bucket**
- 🗄️ **Database Table** (DynamoDB)

Each environment uses the same Terraform module to provision infrastructure.
Basic variations such as environment name and instance count are controlled using input variables, while the core configuration remains consistent across environments.
---

# Architecture Diagram 


## Project Structure

```
dsp_env/
│
├── main.tf                # Calls modules for dev, stage, prod
├── terraform.tf           # Terraform configuration
├── .gitignore             # Ignores sensitive & local files
│
├── module/                # Reusable Terraform module
│   ├── my_instance.tf
│   ├── my_bucket.tf
│   ├── my_db_table.tf
│   └── my_variables.tf
```

## How to Run

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Preview Changes

```bash
terraform plan
```

### 3. Apply Infrastructure

```bash
terraform apply
```

---

##  Security Best Practices

| Practice | Status |
|----------|--------|
| Terraform state files not committed | ✅ |
| `.terraform/` directory ignored | ✅ |
| `.gitignore` configured properly | ✅ |

---

##  Key Concepts Used

- **Terraform Modules** — Reusable infrastructure components
- **Infrastructure as Code (IaC)** — Declarative resource management
- **Multi-Environment Deployment** — Dev / Staging / Production separation
- **Variable Parameterization** — Environment-driven configuration
- **AWS Resource Provisioning** — EC2, S3, DynamoDB

---

This project showcases:

- Real-world Terraform structure
- Clean modular design
- Practical cloud deployment skills

> Feel free to fork, use, or improve this project!