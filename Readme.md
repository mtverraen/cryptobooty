# Cryptobooty 
Companion repo for the article ("how to mine Monero in GCP")[https://itnext.io/how-to-mine-monero-in-gcp-d2b1f40497f7].


Attack Vectors considered:
- Hijack container and run shell script
- If access to APIserver (or equivalent): 
- - Basic: Install pod with (xmrig image)[https://artifacthub.io/packages/helm/brannon/xmrig]
- - Deploy non-malicious pod and run mining script as command
- Supply chain attack: Install mining binary into legitimate applications

Countermeasures considered:
- Monitor resource application resource consumption (set resource limits in apps)
- Set resource limits in namespace
- enable RBAC
- Lock down apiserver 
- Falco 

## Falco 
- default rule that monitor for calls to known mining pools. -> Easily avoided
- monitors pods for chmod-operations which makes pod hijacks difficult to get away with
```
helm repo add falcosecurity https://falcosecurity.github.io/charts  
helm install falco falcosecurity/falco --set falcosidekick.enabled=true --values-file=falco.yaml 
```

## Infra
- *GKE\_cluster:* Basic GKE cluster with monitoring enabled
- *Digital Ocean proxy* DO_proxy for setting up proxy droplet (not used)
- *Dante* Socks5 proxy config


