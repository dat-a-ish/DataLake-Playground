```
helm repo list
helm list
helm show values trino/trino > helm-values.yml 
helm install -f helm-values.yml example-trino-cluster trino/trino
kubectl port-forward svc/example-trino-cluster-trino 8080:8080
helm uninstall example-trino-cluster 
```