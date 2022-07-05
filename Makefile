.PHONY: help run build

help: ## Display this help screen
	@grep -h -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

mvn-run: ## Run application
	mvn spring-boot:run -DskipTests

mvn-build: ## Build application
	mvn clean package -DskipTests

docker-run: ## Run apllication by docker container
	docker run -d -p 8080:8080 -t registry.github.com/ssnnrrkk/demo-spring-boot.git

docker-build: ## Build image docker
	docker build -t registry.github.com/ssnnrrkk/demo-spring-boot.git .

docker-push: ## Push image docker to registry
	docker push registry.github.com/ssnnrrkk/demo-spring-boot.git
