FROM sqitch/sqitch

# RUN apt-get update
# RUN apt-get install postgresql-client

WORKDIR /usr/src/app

COPY . .

ENTRYPOINT [ "/usr/src/app/docker-startup.sh" ]