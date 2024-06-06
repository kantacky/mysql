.PHONY: run

run:
	@docker \
		run \
		--name mysql \
		-e MYSQL_ROOT_PASSWORD=root \
		-v ./data:/var/lib/mysql \
		-v ./my.cnf:/etc/mysql/conf.d/my.cnf \
		-v ./ssl:/etc/mysql/ssl \
		-v ./init:/docker-entrypoint-initdb.d \
		-p 3306:3306 \
		-d \
		mysql:8

