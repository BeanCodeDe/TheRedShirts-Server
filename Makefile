init.token:
	sh ./authi-data/generateKeyFile.sh

start.server:
	docker compose up --build --pull=always

start.server.detached:
	docker compose up --build --pull=always -d

start.server.localbuild:
	docker compose up --build

cleanup:
	docker ps -aq | xargs docker stop
	docker system prune -a -f
	docker volume prune -f	
