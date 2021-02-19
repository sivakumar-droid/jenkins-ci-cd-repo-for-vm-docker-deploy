container_name=apache-site
if sudo docker ps -a --format '{{.Names}}' | grep -Eq "^${container_name}\$"; then
  echo 'exists'
else
  echo 'does not exist'
fi
