FROM node:14-alpine

WORKDIR /workspace

RUN npm i -g global prisma@3.15
RUN apk add nginx

COPY nginx.conf /etc/nginx/http.d/default.conf
COPY entrypoint.sh /
CMD /entrypoint.sh
