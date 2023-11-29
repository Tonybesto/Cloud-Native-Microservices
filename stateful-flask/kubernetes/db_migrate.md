export pod=$(kubectl get pods -n stateful-flask -l app=stateful-flask -\
o jsonpath='{.items[0].metadata.name}')

kubectl exec -it $pod -n stateful-flask -- flask db init

kubectl exec -it $pod -n stateful-flask -- flask db migrate

kubectl exec -it $pod -n stateful-flask -- flask db upgrade