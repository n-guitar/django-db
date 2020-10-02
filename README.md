# django-db

# dev start
```bash
# コンテナの停止
$ docker-compose down -v

# コンテナの起動
$ docker-compose up -d --build

# migrate
$ docker-compose exec django python manage.py migrate --noinput
```

# .env .env_db作成
```bash
# .env
DEBUG=0
SECRET_KEY="set djnago key"
DATABASE_ENGINE="set djnago db engine"
DATABASE_DB="set db name"
DATABASE_USER="set db user name"
DATABASE_PASSWORD="set user password name"
DATABASE_HOST="set db name"
DATABASE_PORT="set db post"

# .env_db
MYSQL_ROOT_PASSWORD="set root password name"
MYSQL_DATABASE="set db name"
MYSQL_USER="set db user name"
MYSQL_PASSWORD="set user password name"
```

# pro start
```bash
# コンテナの停止
$ docker-compose -f docker-compose.prod.yml down -v

# コンテナの起動
$ docker-compose -f docker-compose.prod.yml up -d --build

# migrate
$ docker-compose -f docker-compose.prod.yml exec django python manage.py migrate --noinput

# collectstatic
$ docker-compose -f docker-compose.prod.yml exec django python manage.py collectstatic --no-input --clear
```
