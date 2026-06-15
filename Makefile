up:
	docker compose -f docker/docker-compose.yaml up -d

down:
	docker compose -f docker/docker-compose.yaml down

ps:
	docker ps

logs:
	docker compose -f docker/docker-compose.yaml logs

restart:
	docker compose -f docker/docker-compose.yaml down && docker compose -f docker/docker-compose.yaml up -d

check:
	docker compose -f docker/docker-compose.yaml config

health:
	./scripts/healthcheck.sh
