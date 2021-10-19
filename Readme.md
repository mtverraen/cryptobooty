# Cryptobooty [WIP]
This repo explore the concept of mining monero in K8S. 


- Hijack container and run shell script
- If access to APIserver (or equivalent): 
- - Basic: Install pod with (xmrig image)[https://artifacthub.io/packages/helm/brannon/xmrig]
- - Deploy non-malicious pod and run mining script as command
- Supply chain attack: Install mining binary into legit application

Monitor resource application resource consumption (set resource limits in apps)
Set resource limits in namespace
enable RBAC
Lock down apiserver 
Falco 

## Falco 
- default rule that monitor for calls to known mining pools. -> Easily avoided

## Infra

*01:* Basic GKE cluster with monitoring enabled
*02* Falco enabled


## Falco
```
helm repo add falcosecurity https://falcosecurity.github.io/charts  
helm install falco falcosecurity/falco --set falcosidekick.enabled=true --values-file=falco.yaml 
```
