install:
	docker compose -f docker-compose.local.yml build

up:
	docker compose -f docker-compose.local.yml up -d

bash:
	docker compose -f docker-compose.local.yml exec -it php bash