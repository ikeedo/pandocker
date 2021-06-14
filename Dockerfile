FROM dalibo/pandocker:latest

RUN apt-get -qq update && \
    apt-get -qq -y install curl vim

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -

RUN apt-get install -qq -y nodejs

RUN npm i -g npm-watch watch --force

# mermaid-filter
RUN apt-get install -y gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget libnss3-dev libatk-bridge2.0-0 libxkbcommon-x11-0 libgtk-3-0 libgbm-dev libxshmfence-dev librsvg2-bin
RUN npm i -g mermaid-filter --force

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN npm install

ENTRYPOINT ["npm", "run", "watch"]
