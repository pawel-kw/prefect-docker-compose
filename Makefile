install: ## Create and activate Python venv and install project dependencies
	@bash setup/install.sh

activate: ## Activate Python venv and source the .env variables
	@bash setup/activate.sh

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST)  | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help