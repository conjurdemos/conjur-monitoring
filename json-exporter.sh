docker run \
  -d --name json \
  --restart=always \
  -v $PWD/json/:/tmp \
  -p 7979:7979 \
  quay.io/prometheuscommunity/json-exporter \
  --config.file=/tmp/config.yml

