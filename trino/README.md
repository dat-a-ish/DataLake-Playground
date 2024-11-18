```
helm repo list
helm list
helm show values trino/trino > helm-values.yml 
helm install -f helm-values.yml example-trino-cluster trino/trino
kubectl port-forward svc/example-trino-cluster-trino 8080:8080
helm uninstall example-trino-cluster 
```


```
echo -n "user1:" > password.db
openssl passwd -6 mypassword >> password.db 
htpasswd -bnBC 10 username yourpassword
kubectl delete secret trino-password-secret
kubectl create secret generic trino-password-secret --from-file=password.db=password.db
kubectl patch secret trino-password-secret \
  -n default \
  -p '{"metadata": {"labels": {"app.kubernetes.io/managed-by": "Helm"}, "annotations": {"meta.helm.sh/release-name": "example-trino-cluster", "meta.helm.sh/release-namespace": "default"}}}'
openssl rand 512 | base64
htpasswd -B -C 10 password.db test
```

```
kubectl get secrets
kubectl describe secret trino-password-secret
kubectl get secret trino-password-secret -o jsonpath='{.data}'
kubectl get secret trino-password-secret -o jsonpath='{.data.password\.db}' | base64 --decode
```