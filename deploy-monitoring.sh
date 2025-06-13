#!/bin/bash

echo "🚀 Deploying monitoring stack..."
docker-compose --env-file .env up -d

echo "✅ Monitoring stack is up!"