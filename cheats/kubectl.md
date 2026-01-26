# kubectl

## Configuration

- `kubectl config view` — Show merged kubeconfig settings
- `kubectl config get-contexts` — List all available contexts
- `kubectl config use-context [name]` — Switch to a specific context

## Pods

- `kubectl get pods` — List all pods in current namespace
- `kubectl describe pod [name]` — Show detailed state of a pod
- `kubectl logs [name]` — Print logs for a pod
- `kubectl exec -it [name] -- /bin/bash` — Execute a command in a pod

## Resources

- `kubectl get deployments` — List deployments
- `kubectl get services` — List services
- `kubectl apply -f [file.yaml]` — Apply a configuration from file
- `kubectl delete -f [file.yaml]` — Delete resources defined in file
