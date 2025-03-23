#!/bin/bash
helm upgrade --install postgres ./postgres-service --namespace services
helm upgrade --install redis ./redis-service --namespace services