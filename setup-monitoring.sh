#!/bin/bash

echo "🔧 Setting up permissions..."
chmod +x deploy-monitoring.sh health-check.sh

echo "📦 Checking Docker..."
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker."
    exit 1
fi

if [ ! -f ".env" ]; then
    echo "⚠️  .env file missing. Please create it with neces    sary configs."
    exit 1
fi

echo "✅ Setup completed. Ready to deploy."