FROM grafana/grafana-oss

USER root

RUN sed -i -e "s/;min_refresh_interval = 5s/min_refresh_interval = 100ms/g" /etc/grafana/grafana.ini
