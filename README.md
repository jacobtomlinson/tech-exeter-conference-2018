# Containers and orchestration 101
With Docker, Kubernetes and Helm.

# Intro

This repo accompanies a talk on how to use Docker, Kubernetes and Helm to package and deploy applications.

# Docker

The application we are going to package is called [Tap Tap Adventure](https://github.com/Tach-Yon/Tap-Tap-Adventure).

## Create the config files

_See the instructions in the Tap Tap Adventure repo._

## Build the docker image
```
docker build -t jacobtomlinson/taptap-server:dev docker
```

## Run the MySQL instance
```
docker run --name taptap-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=taptap -e MYSQL_USER=taptap -e MYSQL_PASSWORD=patpat mysql:5
```

## Run the Tap Tap Adventure server
```
docker run --init --rm -p 1800:1800 --link taptap-mysql:mysql jacobtomlinson/taptap-server:dev
```

## Test locally

Visit http://localhost:1800 to see your running server.


# Helm chart

Create a bare bones chart

```
helm create tap-tap
```

```
helm dep up tap-tap
```

```
helm install --name tap-tap --namespace tap-tap tap-tap -f values.yaml
```

```
helm upgrade tap-tap tap-tap -f values.yaml
```
