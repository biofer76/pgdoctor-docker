# pgDoctor - Docker Version

Original Project available here: https://github.com/thumbtack/pgdoctor

Dockerized version of `pgdoctor`, a simple and lightweight web service used to define and run custom health checks on PostgreSQL instances.

## Requirements:
* Docker
* Docker Compose
* make

## Configure

Create a new `config.env` file with PostgreSQL and webservice settings, you can duplicate `config.example.env` file.

## Run pgdoctor webservice

Display the commands help:

```
make help
``` 

**Build Docker image**  
First of all you have to compile pgdoctor and build the Docker image used to run the pgdoctor container

```
make build
``` 

If you want to check **an exiting PostgreSQL Database** with run a the Docker container with:  

```
make run 
```

If you need to run a **new PostgreSQL Database** checked through pgdoctor: 

```
make full
```

