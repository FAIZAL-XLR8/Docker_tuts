FROM node

WORKDIR basic_node_js/backend/

COPY . .



RUN npm ci

CMD ["node", "server.js"]