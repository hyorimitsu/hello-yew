include .env

build:
	mkdir ./app/dist
	docker-compose -f docker-compose-tools.yaml run --rm -v "$$(pwd)/app":/app -w /app wasm wasm-pack build --target web --out-name wasm --out-dir ./dist
	cp ./app/dist/* ./app/static/
	rm -rf ./app/dist/

run:
	docker-compose -f docker-compose.yaml -p $(PROJECT_NAME) up -d

down:
	docker-compose -f docker-compose.yaml -p $(PROJECT_NAME) down
