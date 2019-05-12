#!/bin/bash
docker exec -i semantic-search_mysql_1 mysql -u root -psomewordpress wordpress < ./data/mysql/wp_database.sql