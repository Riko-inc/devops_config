helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
  -n services \
  -f /home/user1/common/nginx-values.yaml