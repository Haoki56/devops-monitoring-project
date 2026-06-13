up:
 docker compose up -d

down:
 docker compose down

ps:
 docker ps

logs:
 docker compose logs

restart:
 docker compose down && docker compose up -d

check:
 docker compose -f docker-compose.yaml config
