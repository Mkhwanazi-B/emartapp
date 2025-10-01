FROM node:14 AS web-build
WORKDIR /usr/src/app
COPY . .
RUN npm install && npm run build --prod

FROM nginx:latest
COPY --from=web-build /usr/src/app/dist/client/ /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 4200