kubectl create secret docker-registry motus-regkey \
  --docker-server=<YOUR_REGISTRY_SERVER> \
  --docker-username=_json_key \
  --docker-password="$(cat gcp.json)" \
  --docker-email=<YOUR_SERVICE_ACCOUNT_EMAIL>