## Create image

```
docker build -t dev-env .
```

## Create container

```
docker run --name dev-env -d -i -t dev-env
```

## SSH into container

```
docker exec -it dev-env bash
```