export DATABASE_URL=postgresql://$DATABASE_USER:$DATABASE_PASSWORD@$DATABASE_HOST:$DATABASE_PORT/$DATABASE_NAME

echo $HTPASSWD > /etc/nginx/htpasswd
nginx

prisma init
prisma db pull
prisma studio
