FROM alpine:3.18

WORKDIR /mohammed

COPY test.js .

RUN apk update && \
    apk upgrade && \
    apk add --no-cache nodejs npm

RUN npm install express

CMD ["node", "test.js"]

 