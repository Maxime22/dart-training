.PHONY: build test

build:
	docker compose build dartapp

run:
	docker compose run --rm dartapp dart run bin/main.dart

test:
	docker compose run --rm test dart --disable-analytics
	docker compose run --rm test sh -c "dart pub get && dart test"

