# DevOps Monitoring Project

Проект мониторинга сервера с использованием:

- Docker
- Prometheus
- Grafana
- Node Exporter

## Сервисы

- Prometheus: http://localhost:9090
- Grafana: http://localhost:3000
- Node Exporter: http://localhost:9100

## ## Запуск проекта

```bash
docker compose up -d

## Project Structure

```text
devops-monitoring-project/
├── docker/
│   ├── docker-compose.yaml
│   └── prometheus/
│       ├── prometheus.yml
│       └── alert.rules.yml
├── scripts/
│   └── healthcheck.sh
├── docs/
│   └── architecture.md
├── .github/workflows/
│   └── main.yml
├── Makefile
└── README.md
