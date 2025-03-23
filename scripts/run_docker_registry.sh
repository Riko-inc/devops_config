# fuck, you need DNS for this to work. Shiiiiiiit
docker run -d -p 5000:5000 --restart=always \
  --name registry \
  -e REGISTRY_HTTP_SECRET=$(cat /home/user1/secrets/registry_secret) \
  -e REGISTRY_AUTH=htpasswd \
  -e REGISTRY_AUTH_HTPASSWD_REALM="http://localhost:5000" \
  -e REGISTRY_AUTH_HTPASSWD_PATH=/home/user1/secrets/htpasswd/user_data \
  -v /home/user1/secrets/htpasswd/user_data:/etc/registry/htpasswd \
  registry:2
