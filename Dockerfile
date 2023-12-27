FROM nginx:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y

WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/sites-enabled/

ADD https://github.com/yogawahyu454/Uas/raw/main/CapstoneCloud_225410042.zip .
RUN unzip CapstoneCloud_225410042.zip
RUN mv CapstoneCloud_225410042/* .


EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
