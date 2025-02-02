.PHONY: compose-down
compose-down:
	@echo "Compose down"
	@docker compose down

.PHONY: compose-up
compose-up: chat-ui/db ollama/data
	@echo "Compose up"
	@docker compose up -d
	@echo "ChatUI is reachable at http://localhost:3000"

chat-ui/db:
	@echo "ChatUI - Creating DB folder"
	@mkdir -p $@

ollama/data:
	@echo "Ollama - Creating data folder"
	@mkdir -p $@
