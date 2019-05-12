#!/bin/bash
docker-compose down
docker-compose up -d
echo "Sleeping for 15 seconds while services starts..."
sleep 15
docker exec -i semantic-search_mysql_1 mysql -u root -pwordpress wordpress < ./data/mysql/wp_database.sql