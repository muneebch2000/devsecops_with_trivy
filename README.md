# Project 4 - DevSecOps with Trivy
# Project 4 - DevSecOps Pipeline with Trivy

## Overview
A DevSecOps CI/CD pipeline that automatically scans Docker images for 
vulnerabilities using Trivy before pushing to DockerHub.

## Tech Stack
- Python 3.11
- Flask
- Docker
- GitHub Actions
- Trivy Security Scanner
- DockerHub
- Pytest

## Project Structure
project4-devsecops/
├── app/
│   └── app.py
├── tests/
│   └── test_app.py
├── .github/
│   └── workflows/
│       └── devsecops.yml
├── Dockerfile
└── requirements.txt

## Pipeline Flow
Push Code → Run Tests → Trivy Security Scan → Build & Push to DockerHub

## Features
- Automated testing with Pytest
- Docker image vulnerability scanning with Trivy
- Scans for CRITICAL and HIGH vulnerabilities
- Only pushes to DockerHub if security scan passes
- Full CI/CD automation with GitHub Actions

## How to Run Locally
git clone https://github.com/muneebch2000/devsecops_with_trivy
cd devsecops_with_trivy
pip install -r requirements.txt
python app/app.py

## Run Tests Locally
pytest tests/

## Scan Docker Image Locally
docker build -t devsecops-app:test .
trivy image devsecops-app:test

## API Endpoints
| Endpoint | Description |
|----------|-------------|
| app/ | Main app |
| /health | Health check |
| /security | Security status |

## Pipeline Jobs
1. **Test** — runs pytest on all tests
2. **Security Scan** — Trivy scans Docker image for CVEs
3. **Build and Push** — pushes to DockerHub only if scan passes

## Skills Demonstrated
- DevSecOps practices
- Trivy vulnerability scanning
- Security gates in CI/CD pipeline
- Docker image security
- GitHub Actions automationSSSS
- Shift-left security
