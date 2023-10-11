# -- Base Node ---
FROM node:18-alpine AS base
WORKDIR /usr/src/app
COPY package*.json ./
COPY pnpm-lock.yaml ./
COPY ./extensions ./extensions

# -- Build Base ---
FROM base AS build-base
RUN npm install -g pnpm

# -- production ---
FROM build-base AS production
RUN pnpm i --production

# Expose port and define CMD
ENV NODE_ENV production
ENV PORT 80
ENV NODE_OPTIONS --max-old-space-size=4096
CMD npm run start
