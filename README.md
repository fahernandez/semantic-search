# Semantic Search proyect with Apache solr, Apache Stanbol and Wordpress
Proyect integration for semantic search using solr, wordpress y apache stanbol.

## Requirements
1. Install docker.
- [Docker](https://docs.docker.com/engine/installation/) 
2. Install docker-compose
- [Docker Compose](https://docs.docker.com/compose/install/) 
3. Install git.
- [Git](https://gist.github.com/derhuerst/1b15ff4652a867391f03)

# How to run the proyect
1. Clone this project.
```
git clone https://github.com/fahernandez/semantic-search
```
2. Enter the repo folder
```
cd semantic-search
```
3. Chance permission for solr bk data
```
sudo chown -R 8983:8983 ./data/solr
```
4. Start the proyect(It will require download some docker images so please be patient)
```
docker-compose up -d
```
5. Verify that all services start
```
docker-compose ps
```
6. Go to http://localhost:8000/ and select English language for the configuration and click on continue(This will create the initial wordpress database configuration).
7. Execute the mysql backup
```
docker exec -i semantic-search_mysql_1 mysql -u root -psomewordpress wordpress < ./data/mysql/wp_database.sql
```
8. Enjoy!