#!/bin/sh

if [ "$DATABASE_HOST" = "mariadb" ]
then
    echo "Waiting for mariadb..."

    while ! nc -z $DATABASE_HOST $DATABASE_PORT; do
      sleep 0.1
    done

    echo "mariadb started"
fi

python manage.py flush --no-input
python manage.py migrate

exec "$@"