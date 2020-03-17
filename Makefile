cnf ?= config.env
include $(cnf)
export $(shell sed 's/=.*//' $(cnf))

.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Compile pgdoctor source code and build Docker image
	@docker build -t pgdoctor .

run:  ## Run pgdoctor container in background
	@docker run -d --restart=always --env-file=config.env -p ${WEBSERVER_PORT}:8071 --name pgdoctor pgdoctor:latest

stop: ## Stop and remove pgdoctor container
	@docker stop pgdoctor
	@docker rm pgdoctor

full: ## Run PostgreSQL database Docker container and pgdoctor
	@docker-compose up -d

full-stop: ## Stop PostgreSQL database Docker container and pgdoctor
	@docker-compose down
