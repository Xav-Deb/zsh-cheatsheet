# kubectl

## Resource Exploration

- `kubectl get pods` — List all pods
- `kubectl get services` — List services
- `kubectl get nodes` — List cluster nodes
- `kubectl get all -A` — List all resources across all namespaces

## Debugging and Logs

- `kubectl logs pod_name` — Display pod logs
- `kubectl logs -f pod_name` — Follow logs in real-time
- `kubectl describe pod pod_name` — Show detailed state and events of a pod
- `kubectl exec -it pod_name -- /bin/bash` — Open an interactive shell in a pod

## Deployment Management

- `kubectl apply -f file.yaml` — Create or update a resource from a file
- `kubectl delete pod pod_name` — Delete a pod
- `kubectl scale deployment name --replicas=3` — Change the number of replicas
- `kubectl rollout restart deployment name` — Restart a deployment

## Context and Configuration

- `kubectl config get-contexts` — List available contexts
- `kubectl config use-context name` — Switch current context
- `kubectl config set-context --current --namespace=my-ns` — Change default namespace
- `kubectl delete -f [file.yaml]` — Delete resources defined in file
