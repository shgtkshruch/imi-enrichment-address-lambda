FROM amazon/aws-lambda-nodejs:12
COPY . ./
CMD [ "app.handler" ]
