#
# Perform these steps as the root user (e.g., in a 'sudo bash' shell)
#

# Install build tools and Kerberos support.
apt update && \
#apt-get install -y python3
apt-get install -y wget build-essential make python3 python3-pip


# Install the latest version of librdkafka:

wget -qO - https://packages.confluent.io/deb/7.0/archive.key | apt-key add -

add-apt-repository "deb https://packages.confluent.io/clients/deb $(lsb_release -cs) main"

apt update

apt install -y librdkafka-dev


#
# Now build and install confluent-kafka-python as your standard user
# (e.g., exit the root shell first).
#

python3 -m pip install --no-binary confluent-kafka confluent-kafka


# Verify that confluent_kafka is installed:

python3 -c 'import confluent_kafka; print(confluent_kafka.version())'