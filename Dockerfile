FROM heroku/heroku:20
RUN sudo apt install -y python3 python3-pip
RUN python3 -m pip install  -q asyncio_socks_server
RUN useradd -m heroku
USER heroku
EXPOSE 5000
CMD chisel server --auth $CHISEL_AUTH --socks5 --reverse
