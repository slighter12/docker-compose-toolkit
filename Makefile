.PHONY: redis-cluster-up redis-cluster-down redis-sentinel-up redis-sentinel-down \
        kafka-up kafka-down rabbitmq-up rabbitmq-down search-up search-down observability-up observability-down \
        all-up all-down

# Redis Cluster commands
redis-cluster-up:
	@echo "Starting Redis Cluster..."
	docker-compose up -d redis-1 redis-2 redis-3 redis-4 redis-5 redis-6 redis-cluster-creator

redis-cluster-down:
	@echo "Stopping Redis Cluster..."
	docker-compose down redis-1 redis-2 redis-3 redis-4 redis-5 redis-6 redis-cluster-creator

# Redis Sentinel commands
redis-sentinel-up:
	@echo "Starting Redis Sentinel..."
	docker-compose up -d redis-sentinel-master redis-sentinel-replica-1 redis-sentinel-replica-2 redis-sentinel-1 redis-sentinel-2 redis-sentinel-3

redis-sentinel-down:
	@echo "Stopping Redis Sentinel..."
	docker-compose down redis-sentinel-master redis-sentinel-replica-1 redis-sentinel-replica-2 redis-sentinel-1 redis-sentinel-2 redis-sentinel-3

# Kafka commands
kafka-up:
	@echo "Starting Kafka..."
	docker-compose up -d zookeeper kafka-1 kafka-2 kafka-3

kafka-down:
	@echo "Stopping Kafka..."
	docker-compose down zookeeper kafka-1 kafka-2 kafka-3

# RabbitMQ commands
rabbitmq-up:
	@echo "Starting RabbitMQ..."
	docker-compose up -d rabbitmq

rabbitmq-down:
	@echo "Stopping RabbitMQ..."
	docker-compose down rabbitmq

# Search commands
search-up:
	@echo "Starting Search Services..."
	docker-compose up -d elasticsearch kibana

search-down:
	@echo "Stopping Search Services..."
	docker-compose down elasticsearch kibana

# Observability commands
observability-up:
	@echo "Starting Observability Services..."
	docker-compose up -d pyroscope

observability-down:
	@echo "Stopping Observability Services..."
	docker-compose down pyroscope

# Helper commands
redis-cluster-status:
	@echo "Checking Redis Cluster status..."
	docker-compose ps redis-1 redis-2 redis-3 redis-4 redis-5 redis-6 redis-cluster-creator

redis-sentinel-status:
	@echo "Checking Redis Sentinel status..."
	docker-compose ps redis-sentinel-master redis-sentinel-replica-1 redis-sentinel-replica-2 redis-sentinel-1 redis-sentinel-2 redis-sentinel-3

kafka-status:
	@echo "Checking Kafka status..."
	docker-compose ps zookeeper kafka-1 kafka-2 kafka-3

rabbitmq-status:
	@echo "Checking RabbitMQ status..."
	docker-compose ps rabbitmq

search-status:
	@echo "Checking Search Services status..."
	docker-compose ps elasticsearch kibana

observability-status:
	@echo "Checking Observability Services status..."
	docker-compose ps pyroscope

# All services commands
all-up:
	@echo "Starting all services..."
	docker-compose up -d

all-down:
	@echo "Stopping all services..."
	docker-compose down

# Cleanup
cleanup:
	@echo "Cleaning up all data..."
	docker-compose down
	docker volume prune -f 