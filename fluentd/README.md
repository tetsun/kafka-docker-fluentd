Fluentd
=======

This image uses following packages.

- nginx
- fluentd

Fluentd tails nginx access log and sends to kafka.

Check
-----
log in to kafka container
```
docker exec -it kafkadockerfluentd_kafka_1 /bin/bash
```

consume topic
```
/opt/kafka/bin/kafka-console-consumer.sh --zookeeper zookeeper --topic nginx.access
```
