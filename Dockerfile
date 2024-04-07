FROM oven/bun:latest
WORKDIR /usr/app
COPY ./ /usr/app
RUN bun i
RUN bun run build

FROM nginx
COPY --from=0 /usr/app/dist /usr/share/nginx/html