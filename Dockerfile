FROM python:3.6

#パッケージインストール
WORKDIR /var/lib/python3
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
RUN pip install discord

#src配下にgitソースの配置
WORKDIR /usr/src/
RUN git clone -b dev https://3a58aea8b3c79c6e72daccb3f31cbe276cdcca28:x-oauth-basic@github.com/dive1210/discordbot.git
# CMD [ "python","./discordbot/app/discordbot.py" ]