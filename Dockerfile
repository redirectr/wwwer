FROM node:latest
ENV APP_HOME /app
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN cd /app; npm install
CMD ["npm","start"]