# ethtool-exporter
A python script that pulls information from ethtool and publishes it in prometheus format. 

The contents of this repo are based on [this archived one](https://github.com/Showmax/prometheus-ethtool-exporter) with the following changes: 

### Dockerfile
- Use python:alpine3.20 in the FROM clause.
- Avoid installing python. 
- Install libraries with pip from the requirements.txt file. 
- Modify the CMD command. 

###  k8s-daemonset.yaml
- Modify the startup command in the daemonset spec. 

These changes fix the project to work on more recent versions for python (3.12.3) and libraries. 