<h1 align="center">Kafka</h1>
It enables users to collect, store, and process data to build real-time event-driven applications.

### Kafka with docker-compose

We need the kafka image and a server to connect to kafka. Here we'll use the zookeeper.

```yaml
version: '3'

services:
  zookeeper:
    image: wurstmeister/zookeeper
    container_name: zookeeper
    ports:
      - "2181:2181"
  kafka:
    image: wurstmeister/kafka
    container_name: kafka
    ports:
      - "9092:9092"
    environment:
      KAFKA_ADVERTISED_HOST_NAME: localhost
      KAFKA_ZOOKEEPER_CONNECT: zookeeper:2181
```

### Kafka commands

```
cd /opt/kafka<version>
```

- Create a topic:

***One replication-factor***
  
```
 kafka-topics.sh --create --zookeeper zookeeper:2181 --partitions 3 --replication-factor 1 --topic test-3-1
```

***Three replication-factor***

```
kafka-topics.sh --create --zookeeper zookeeper:2181 --partitions 3 --replication-factor 3 --topic test-3-3
```

- List topics

```
kafka-topics.sh --list --zookeeper zookeeper:2181
```

- Describe a topic:

```
kafka-topics.sh --describe --zookeeper zookeeper:2181 --topic test-3-1
```

To learn more about it: 

https://towardsdatascience.com/how-to-install-apache-kafka-using-docker-the-easy-way-4ceb00817d8b

