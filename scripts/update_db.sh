#!/bin/bash
helm upgrade --install postgres /home/user1/postgres-service --namespace services
helm upgrade --install redis /home/user1/redis-service --namespace services