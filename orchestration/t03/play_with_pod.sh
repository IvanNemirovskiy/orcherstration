kubectl run mongo-pod --image=mongo --restart=Never
kubectl get pods
kubectl logs mongo-pod
kubectl describe pod mongo-pod
kubectl delete pod mongo-pod