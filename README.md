# conjur-monitoring
Plug and play monitoring stack, based on Prometheus and Graphana

## Description
The goal of Conjur Monitoring is to facilitate the deployment of stack that will monitor a Conjur Enterprise environment. 
The monitoring stack is based on Prometheus and Graphana capabilities. 
The following exporters have been used : 

- NGINX exporter (https://github.com/martin-helmich/prometheus-nginxlog-exporter#credits) : 
  this exporter is used to monitor the activity of conjur NGINX service and check the request that are received. 

- JSON exporter (https://github.com/prometheus-community/json_exporter) :
  This exporter is used to scrap the info from the /health page of conjur and /info page. From /info the global health of conjur and conjur faillover cluster can be determined. 

- CAdvisor (https://github.com/google/cadvisor/blob/master/docs/storage/prometheus.md) :
  This exporter is used to monitor the health of the nodes and the health of the container.

Graphana is used for creating a dashboard. Grafana will receive data from prometheus and present it in a nice way. An example of what a conjur dashboard could look like can be imported from the file dashboard.json.


## Visuals

![Alt text](Images/dashboard.png?raw=true "Dashboard Example")

## Installation
To install this stack the following needs to be deployed :

- A Prometheus container (prometheus.sh + config can be used if none is available)
- A graphana container (graphana.sh can be used if none is available)

Exporters :
- Cadvisor container needs to be deployed on each host (cadvisor.sh)
- nginx exporter container need to be deployed on each host (nginx-exporter.sh + nginxconf)
- json exporter container can be deploy on one machine and scrap all the others machines based on it config (json-exporter + json)

Once prometheus correctly retrieve informations from those three exporters. You can load the dashboard.json on graphana and start using that dashboard to monitor your environment. 
