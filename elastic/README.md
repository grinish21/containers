## Setup `Elastic`
Runs a docker image for a single-node elastic instance with default index created as `twitter`

`Create Index API` [docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html)

More on the elastic API's at [elastic ReST API docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/rest-apis.html)

### Using docker-compose

```bash
docker-compose build

docker-compose up -d couchbase
```
---

### Using Dockerfile

```bash
docker build -t elastic-custom .

docker run --rm -it -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" --name elastic1 elastic-custom
```

__To bash into the container__

```bash
docker run --rm -it entrypoint=bash elastic-custom:latest
```
---

## Check the default index after it runs

```bash
curl -X GET "localhost:9200/twitter?pretty"
```

---
