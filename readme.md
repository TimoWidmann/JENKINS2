###sample-docker-java-app

```shell script
mvn package docker:build
docker images
docker run -p 8080:8080 sample/dockerjava
```
