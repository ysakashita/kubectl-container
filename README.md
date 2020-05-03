# kubectl-container

This is a container of kubectl command.
If you want to run kubectl on your Kubernetes, it's executing easily.

The container image is pushed `yaskashita/kubectl` in the dockerhub.

## How to deploy

1. Apply rbac.yaml

```
$ kubectl apply -f Manifests/rbac.yaml
```

2. Apply pod.yaml

```
$ kubectl apply -f Manifests/pod.yaml
```

The pod execute kubectl 1.17.0.
If you want to run other version, you need update image name in the YAML.

## How to use

```
$ kubectl exec -ti kubectl-pod sh
/ # kubectl get pod
NAME          READY   STATUS    RESTARTS   AGE
kubectl-pod   1/1     Running   0          11m
```
