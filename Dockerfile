FROM amazon/aws-lambda-nodejs:12
COPY app.js node_modules ./
CMD [ "app.handler" ]
