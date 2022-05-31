FROM node:14-alpine

WORKDIR /workspace

RUN npm i -g global prisma
RUN apk add nginx

COPY nginx.conf /etc/nginx/http.d/default.conf
COPY entrypoint.sh /
CMD /entrypoint.sh