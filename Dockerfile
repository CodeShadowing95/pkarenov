FROM node:20.9.0-slim
COPY . /pkarenov
WORKDIR /pkarenov
RUN npm install --loglevel=verbose
EXPOSE 3000
RUN npm run build
CMD npm run start