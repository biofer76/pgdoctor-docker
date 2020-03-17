# PGDoctor - Docker Version

Original Project available here: https://github.com/thumbtack/pgdoctor

Dockerized version of `pgdoctor`, a simple and lightweight web service used to define and run custom health checks on PostgreSQL instances.

## Requirements:
* Docker
* Docker Compose

## Configure

Set you PostgreSQL configuration in `config.env` file

Display the commands help:

```
make help
``` 

## Run pgdoctor check

Build Docker image

```
make build
``` 

Run on an exiting PostgreSQL Database

```
make run 
```

Run PostgreSQL Database and pgdoctor 

```
make full
```

