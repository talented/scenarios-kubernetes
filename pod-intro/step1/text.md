
> Pods are the smallest deployable units of computing that you can create and manage in Kubernetes

> Pods can host one or more containers. But in most cases, the pod contains only one container

> Each pod has a unique id uid

> Containers in the same pod are run on the same node and these containers can communicate with each other on localhost

https://kubernetes.io/docs/concepts/workloads/pods

You can create a pod in a declarative way with a yaml file:

```bash
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx:1.14.2
    ports:
    - containerPort: 80
```

Or create it imperatively with an ad-hoc command:
`kubectl run my-pod --image=nginx:alpine`

**Task**

Create a pod imperatively called `my-first-pod` of image `nginx:1.14.2`

<br>
<details><summary>Solution</summary>
<br>

```bash
kubectl run my-first-pod --image=nginx:1.14.2
```{{exec}}

</details>
