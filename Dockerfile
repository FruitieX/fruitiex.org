# Runs as nginx's unprivileged user; the pod allows it to bind port 80.
FROM nginxinc/nginx-unprivileged:alpine@sha256:b5047b9b76845eac124358373c6852377c52e4b05834a47647e955dd91cb8f1e
COPY default.conf /etc/nginx/conf.d/default.conf
COPY public /usr/share/nginx/html
