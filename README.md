# PHP-FPM with NGINX

Basic setup to run PHP-FPM with an NGINX frontend for a local environment in `docker compose`.

## Usage

### `Dockerfile`
Modify the `Dockerfile` according to your needs: choose base image, install packages, add/enable extensions, etc.

### NGINX
The repo contains a sample `nginx.conf` to work with upstream PHP-FPM via fastCGI. You can modify the server settings. The file is mounted to `/etc/nginx/conf.d/default.conf` in the NGINX container.

### HTML
The `html` folder contains the files that are served by NGINX / PHP.

### `docker compose`
To start your server use the command:
```
docker compose up # use -d flag to return to terminal after startup
```
The server will listen on the local port `9090`. You can change this in `docker-compose.yaml`.


If you changed something in the `Dockerfile`, you have to rebuild the PHP image:
```
docker compose up --build
```
This will build the image with the new config and restart the container(s).