# DevOps Monitoring Stack

## Overview

DevOps Monitoring Stack is a portfolio project demonstrating the deployment, monitoring and automation of infrastructure using modern DevOps tools.

The project provides a complete monitoring solution based on Prometheus, Grafana and Node Exporter, automated with Docker Compose, Ansible and GitHub Actions.

## Technologies

* Linux (Ubuntu)
* Docker
* Docker Compose
* Prometheus
* Grafana
* Node Exporter
* Ansible
* GitHub Actions
* Git
* Makefile

---

## Architecture

```text
Ubuntu Server
      |
      v
Docker Compose
      |
      +----------------------+
      |                      |
      v                      v
Node Exporter ---------> Prometheus
                               |
                               v
                           Grafana
```

### Data Flow

1. Node Exporter collects Linux system metrics.
2. Prometheus scrapes metrics from Node Exporter.
3. Grafana visualizes metrics from Prometheus.
4. Alert rules are evaluated by Prometheus.

---

## Project Structure

```text
devops-monitoring-project/
│
├── README.md
├── Makefile
│
├── docker/
│   ├── docker-compose.yaml
│   │
│   └── prometheus/
│       ├── prometheus.yml
│       └── alert.rules.yml
│
├── ansible/
│   ├── inventory
│   │
│   └── playbooks/
│       └── deploy-monitoring.yml
│
├── scripts/
│   └── healthcheck.sh
│
├── docs/
│   └── architecture.md
│
└── .github/
    └── workflows/
        └── main.yml
```

---

## Features

### Monitoring

The monitoring stack collects:

* CPU usage
* Memory usage
* Disk usage
* Network traffic
* System load
* Uptime

### Alerting

Prometheus alert rules monitor:

* Node Exporter availability
* Monitoring stack health

### CI/CD

GitHub Actions automatically validates:

* Docker Compose configuration
* Prometheus configuration
* Alert rules
* Repository structure

### Automation

Ansible automates deployment and configuration.

---

## Requirements

* Ubuntu 22.04+ / Debian-based Linux
* Docker
* Docker Compose
* Git
* Ansible

---

## Installation

Clone repository:

```bash
git clone git@github.com:YOUR_USERNAME/devops-monitoring-project.git

cd devops-monitoring-project
```

---

## Start Monitoring Stack

```bash
make up
```

---

## Stop Monitoring Stack

```bash
make down
```

---

## Restart Monitoring Stack

```bash
make restart
```

---

## Validate Configuration

```bash
make check
```

---

## Health Check

```bash
make health
```

Expected output:

```text
Prometheus OK
Node Exporter OK
Grafana OK
```

---

## Access Services

### Grafana

```text
http://localhost:3000
```

Default credentials:

```text
Username: admin
Password: admin
```

⚠️ Change the default password after first login.

---

### Prometheus

```text
http://localhost:9090
```

---

### Node Exporter

```text
http://localhost:9100/metrics
```

---

## Deployment with Ansible

Deploy monitoring stack:

```bash
sudo ansible-playbook \
-i ansible/inventory \
ansible/playbooks/deploy-monitoring.yml
```

---

## GitHub Actions Pipeline

The CI pipeline performs:

1. Repository checkout
2. File validation
3. Docker Compose validation
4. Prometheus configuration validation
5. Alert rules validation

Pipeline status can be viewed in the GitHub Actions tab.

---

## Security

Sensitive information such as:

* Passwords
* Tokens
* API keys
* SSH keys

must never be stored in the repository.

Use environment variables or secret management solutions instead.

---

## Future Improvements

* Kubernetes deployment
* Alertmanager integration
* Telegram notifications
* Slack notifications
* Terraform infrastructure provisioning
* Grafana dashboard provisioning
* High Availability deployment

---

## Skills Demonstrated

This project demonstrates practical experience with:

* Linux Administration
* Docker
* Docker Compose
* Monitoring and Observability
* Infrastructure Automation
* Configuration Management
* CI/CD
* GitHub Actions
* Ansible
* DevOps Best Practices

---

## Author

Haoki Takeda

DevOps Engineer Portfolio Project
