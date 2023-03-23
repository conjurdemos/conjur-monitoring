sudo docker run \
    --restart=always \
    --name nginx-exporter -d \
    -p 4040:4040 \
    -v /home/ec2-user/cluster/nginx-config/:/mnt/nginxlogs \
    -v /home/ec2-user/prometheus/nginxconf/config.hcl:/etc/prometheus-nginxlog-exporter.hcl \
    quay.io/martinhelmich/prometheus-nginxlog-exporter \
    -config-file /etc/prometheus-nginxlog-exporter.hcl
