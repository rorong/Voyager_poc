## Getting Started

### 1. Start the services

Using the following commands you can start the services required for development

```
docker compose --env-file .docker/.env up postgres -d
docker compose --env-file .docker/.env up redis -d
docker compose --env-file .docker/.env up mail-catcher -d
```

### 2. Application development
