FROM node:17-alpine

# 在容器中建立一個 app 目錄來存放 Node.js 應用程式的程式碼
WORKDIR /app

# 安裝 Node.js 應用程式所需的套件
COPY package*.json ./
RUN npm install

# 把程式碼複製到容器中的 app 目錄
COPY . .

EXPOSE 8080

# 設定 Node.js 應用程式啟動時的指令
CMD [ "npm", "start" ]