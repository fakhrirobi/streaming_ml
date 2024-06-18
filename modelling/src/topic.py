from kafka import KafkaAdminClient
from kafka.admin import NewTopic
import logging

logging.basicConfig(level=logging.DEBUG)

# create a topic 

client = KafkaAdminClient(bootstrap_servers=['localhost:9099'],client_id='abc',api_version=(2,7,0))


if __name__ == "__main__" : 
    # create topic 
    topic = NewTopic(name='topic1',num_partitions=1,replication_factor=1)
    client.create_topics(new_topics=[topic])
    
