
cd containers/$1

docker compose --env-file ../../.env/image.env \
               --env-file ../../.env/user.env \
               --env-file ../../.env/port.env \
               down