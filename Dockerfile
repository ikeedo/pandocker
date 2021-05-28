FROM dalibo/pandocker:latest

RUN apt-get -qq update && \
    apt-get -qq -y install curl

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -

RUN apt-get install -qq -y nodejs

RUN npm i -g npm-watch watch --force

RUN mkdir /app

COPY . /app

WORKDIR /app

ENTRYPOINT ["npm", "run", "watch"]
