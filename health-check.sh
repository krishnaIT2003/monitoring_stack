#!/bin/bash

echo "🔍 Checking service health..."

SERVICES=(prometheus grafana alertmanager loki promtail)
for SERVICE in "${SERVICES[@]}"; do
    STATUS=$(docker inspect -f '{{.State.Health.Status}}' monitoring-$SERVICE 2>/dev/null)
    echo "$SERVICE: ${STATUS:-Not Found}"
done

echo "🔗 Prometheus:     http://localhost:9090"
echo "🔗 Grafana:        http://localhost:3000"
echo "🔗 Alertmanager:   http://localhost:9093"
echo "🔗 Loki:           http://localhost:3100"