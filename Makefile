dbup:
	docker-compose up -d
dbdown:
	docker-compose down -v
dbstart:
	docker-compose start
dbstop:
	docker-compose stop

.PHONY: dbup dbdown dbstart dbstop