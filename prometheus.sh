docker run \
    --name prom \
    -d --restart=always \
    -p 9090:9090 \
    -v /home/ec2-user/prometheus/config:/config \
    prom/prometheus \
    "--config.file=/config/prometheus.yml"
