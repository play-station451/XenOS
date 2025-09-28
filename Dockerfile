FROM node:23
RUN apt-get update && apt-get install -y zip uuid-runtime
COPY . .
RUN npm install -g bun
RUN bun install
RUN bun run build
CMD ["bun", "start"]
