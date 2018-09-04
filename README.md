```
docker build -t jacobtomlinson/browserquest-server:dev .
```


```
docker run --name taptap-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=taptap -e MYSQL_USER=taptap -e MYSQL_PASSWORD=patpat mysql:5
```

```
docker run --init --rm -p 1800:1800 --link taptap-mysql:mysql jacobtomlinson/browserquest-server:dev
```
