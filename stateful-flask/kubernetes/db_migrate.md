export pod=$(kubectl get pods -n stateful-flask -l app=stateful-flask -\
o jsonpath='{.items[0].metadata.name}')

kubectl exec -it $pod -n stateful-flask -- flask db init

kubectl exec -it $pod -n stateful-flask -- flask db migrate

kubectl exec -it $pod -n stateful-flask -- flask db upgrade

Finally, check that the application is working:

export url="http://$(kubectl get ingress | awk '{print $3}' | tail -n 1)/tasks"

# add a new task
curl -X POST -H "Content-Type: application/json" -d '{"title":"New task", "description":"New description"}' $url

# get all tasks

curl $url