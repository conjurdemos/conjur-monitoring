docker run \
    --name graphana \
    -d --restart=always \
    -p 3000:3000 \
    grafana/grafana-oss:latest

