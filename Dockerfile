FROM alpine

WORKDIR /app

RUN apk add openjdk8
RUN apk add curl
RUN apk add python3

RUN curl https://launcher.mojang.com/v1/objects/5998d2c7c15fea04b2541efdcbec4c8cfe5df2a6/server.jar -o server.jar
RUN touch eula.txt
RUN echo "eula=true" > eula.txt

RUN mkdir server

COPY start.py .

CMD python3 start.py