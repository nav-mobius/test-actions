FROM node:13-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install --production

COPY . .

EXPOSE 3000

CMD node index.js


# kubectl delete replicaset node-hello-app-75784665bc
# kubectl delete ing node-hello-app-ingress &&
# kubectl delete svc node-hello-app-svc &&
# kubectl delete deployment node-hello-app
# kubectl delete pod node-hello-app-75784665bc-fjss2