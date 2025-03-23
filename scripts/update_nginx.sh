helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
  -n services \
  -f /home/user1/common/nginx-values.yaml

kubectl apply -f /home/user1/task-service/templates/ingress.yaml