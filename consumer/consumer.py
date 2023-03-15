from kafka import KafkaConsumer
import logging


logging.basicConfig(level=logging.INFO)


class Consumer:

    def __init__(self):
        self._init_kafka_consumer()

    def _init_kafka_consumer(self):
        self.kafka_host = "kafka-local.opa-auhtz.svc.cluster.local:9092"
        self.kafka_topic = "ai-user-entitlement-updated"
        self.consumer = KafkaConsumer(
            "ai-user-entitlement-updated",
            bootstrap_servers=self.kafka_host,
        )

    def consume_from_kafka(self):
        for message in self.consumer:
            logging.info(message.value)


if __name__ == "__main__":

    consumer = Consumer()

    while True:
        consumer.consume_from_kafka()
