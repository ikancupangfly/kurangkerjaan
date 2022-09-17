FROM heroku/heroku:20
RUN apt-get update -y && apt-get install -y python3 python3-pip
RUN python3 -m pip install asyncio-socks-server
RUN useradd -m heroku
USER heroku
COPY config.json .
EXPOSE 1080
CMD asyncio-socks-server --config config.json
