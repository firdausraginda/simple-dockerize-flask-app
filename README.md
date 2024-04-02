# SIMPLE DOCKERIZE FLASK APP

## Dependencies

Create virtual env
```sh
python3 -m venv vir-env
```

Activate virtual env
```sh
source vir-env/bin/activate
```

Install flask
```sh
pip3 install flask
```

Install gunicorn
```sh
pip3 install gunicorn
```

Write pip list to `requirements.txt`
```sh
pip3 freeze > requirements.txt
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
gunicorn -w 4 --reload -b 0.0.0.0:8080 main:app
```

### Execute via Dockerfile

Create and run container
```sh
docker run -d -p 8080:8080 --name simple-dockerize-flask-app simple-dockerize-flask
```

### Execute via docker compose

Create and run container
```sh
docker-compose up
```

### on browser

Open in browser `http://localhost:8080/`