
run:
	make -j 2 watch compose

watch:
	docker compose watch --no-up

compose:
	docker compose up
