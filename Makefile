install:
	docker compose -f docker-compose.local.yml build

up:
	docker compose -f docker-compose.local.yml up -d

down:
	docker compose -f docker-compose.local.yml down

bash:
	docker compose -f docker-compose.local.yml exec -it php bash