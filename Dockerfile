FROM ghcr.io/nginx/nginx-unprivileged:stable-alpine

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY dist/interview-ui-angular/browser/ /usr/share/nginx/html/

COPY dist/interview-ui-angular/browser/index.csr.html \
     /usr/share/nginx/html/index.html

EXPOSE 8080