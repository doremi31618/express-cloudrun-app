FROM node:17-alpine
ENV NODE_ENV production

COPY . /workspace
WORKDIR /workspace

RUN npm install --legacy-peer-deps

EXPOSE 5000

CMD npm start