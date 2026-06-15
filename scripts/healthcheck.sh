#!/bin/bash

echo "Checking monitoring stack..."

curl -fs http://localhost:9091/-/ready >/dev/null && echo "Prometheus OK"
curl -fs http://localhost:9110/metrics >/dev/null && echo "Node Exporter OK"
curl -fs http://localhost:3001 >/dev/null && echo "Grafana OK"

exit 0
