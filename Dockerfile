FROM node
EXPOSE 3000

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

ENV WORKSPACE_ID=""
ENV CONVERSATION_USERNAME=""
ENV CONVERSATION_PASSWORD=""

RUN npm install --production && npm cache clean

CMD [ "npm", "start"]
