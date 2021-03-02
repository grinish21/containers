##### Table of contents

* [Setup couchbase using Docker](#couchbase-setup)
* [Setup mongo using Docker](#mongo-setup)
---

## <a name="couchbase-setup"></a> Setup `Couchbase`

### Using docker-compose

```bash
docker-compose build

docker-compose up -d couchbase

```

#### Using Dockerfile

```bash
docker build -t couchbase-custom .

docker run -d \
    -p 8091-8093:8091-8093 \
    -e COUCHBASE_ADMINISTRATOR_USERNAME=Administrator \
    -e COUCHBASE_ADMINISTRATOR_PASSWORD=password \
    -e COUCHBASE_BUCKET=default \
    -e COUCHBASE_BUCKET_PASSWORD= \
    --network="docker_default" \
    --name couchbase1 couchbase-custom

# if you want to get into the container

docker run -i -t $imageId /bin/bash

```
---

## <a name="mongo-setup"></a> Setup `Mongo`

#### Using docker-compose

```sh
> docker-compose build

> docker-compose up -d mongo

```

#### Using Dockerfile

```sh
> cd mongo
> docker build -t mongo-custom .

> docker run -d \
    -p 27017:27017 \
    -e MONGO_ROOT_USERNAME=admin \
    -e MONGO_ROOT_PASSWORD=pswd \
    -e MONGO_HOST=localhost \
    -e MONGO_PORT=27017 \
    -e APP_MONGO_DB=omiyage_db \
    -e APP_MONGO_USER=app_user \
    -e APP_MONGO_PASS=app_password
    --network="docker_default" \
    --name my-mongo mongo-custom

# if you want to `bash` into the container

docker run -i -t $imageId /bin/bash
```
