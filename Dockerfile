FROM nginx:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y

WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/sites-enabled/

ADD https://yogawahyu454/Uas/raw/main/index.html .
RUN mv index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
