FROM node as build
WORKDIR /app
COPY . /app
RUN npm i ; npm run build


FROM nginx
COPY --from=build /app/build/ /usr/share/nginx/html

