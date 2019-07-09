FROM node:8
RUN mkdir -p /BLDB-test
WORKDIR /BLDB-test
COPY . /BLDB-test
EXPOSE 9000
CMD ["npm", "start"]
