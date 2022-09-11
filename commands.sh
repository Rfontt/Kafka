docker container ls -a

docker exec -it kafka bash

cd /opt/kafka<version>

kafka-topics.sh --create --zookeeper zookeeper:2181 --partitions 3 --replication-factor 1 --topic test-3-1

kafka-topics.sh --list --zookeeper zookeeper:2181

kafka-topics.sh --describe --zookeeper zookeeper:2181 --topic test-3-1
