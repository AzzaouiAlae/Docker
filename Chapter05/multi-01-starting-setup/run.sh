#!/bin/bash

docker run --network myNet --name mongo -d -v mongoDB:/data/db \
-e MONGO_INITDB_ROOT_USERNAME=alae \
-e MONGO_INITDB_ROOT_PASSWORD=secret \
mongo || docker start mongo

docker run --name backend -p 80:80 -d --network myNet -e DB_USER=alae -e DB_PASS=secret \
-v /home/aazzaoui/Desktop/Docker/Chapter05/multi-01-starting-setup/backend/app.js:/app/app.js:ro \
-v /home/aazzaoui/Desktop/Docker/Chapter05/multi-01-starting-setup/backend/models:/app/models:ro \
-v backend-logs:/app/logs backend:latest || docker start backend

docker run --name frontend -p 3000:3000 -d \
-v /home/aazzaoui/Desktop/Docker/Chapter05/multi-01-starting-setup/frontend/src:/app/src:ro \
-v /home/aazzaoui/Desktop/Docker/Chapter05/multi-01-starting-setup/frontend/public:/app/public:ro \
frontend:latest || docker start frontend