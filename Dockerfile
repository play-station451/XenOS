FROM node:23
COPY . .
RUN npm install -g bun
RUN bun install
RUN bun run build
CMD ["bun", "start"]
