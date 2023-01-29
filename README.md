# SIMPLE DOCKERIZE FLASK APP

## Dependencies

Install pipenv
```sh
pip install --user pipenv
```

Install flask
```sh
pipenv install flask
```

Install gunicorn
```sh
pipenv install gunicorn
```

## Docker

Create `Dockerfile` file

Build docker image
```sh
docker build -t simple-dockerize-flask .
```

## Execute

### Execute via gunicorn

Run command inside virtual env

```sh
gunicorn -w 4 --reload -b 0.0.0.0:8022 main:app
```

### Execute via docker container

Create and run container
```sh
docker run -d -p 8082:8082 --name simple-dockerize-flask-app simple-dockerize-flask
```

### Execute via docker compose

Create and run container
```sh
docker-compose up
```

### on browser

Open in browser `http://localhost:8022/`