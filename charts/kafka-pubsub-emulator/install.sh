
KAFKA_RELEASE=kafka1
EMULATOR_RELEASE=kemu

helm upgrade -i \
    --set server.kafka.bootstrapServers[0]="${KAFKA_RELEASE}-0.${KAFKA_RELEASE}-headless:9092" \
    --set server.kafka.bootstrapServers[1]="${KAFKA_RELEASE}-1.${KAFKA_RELEASE}-headless:9092" \
    --set server.kafka.bootstrapServers[2]="${KAFKA_RELEASE}-2.${KAFKA_RELEASE}-headless:9092" \
    ${EMULATOR_RELEASE}${1} \
    ./
