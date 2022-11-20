install_local_env:
	./install_local_env.sh

build:
	DOCKER_BUILDKIT=1 docker build . -t bookshelf_app:dev

up:
	docker compose up -d

down:
	docker compose down

docker_shell:
	docker compose exec webapp sh

start_db_local:
	docker compose up -d db
	echo "Applying migrations..."
	python manage.py migrate
