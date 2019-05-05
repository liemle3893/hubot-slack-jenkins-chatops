FROM node:8 as build

WORKDIR /app
COPY . ./
RUN npm install

FROM node:8
ENV HUBOT_SLACK_VERIFICATION_TOKEN HUBOT_JENKINS_URL HUBOT_SLACK_TOKEN 
COPY --from=build /app /
EXPOSE 8080
ENTRYPOINT ["/bin/hubot", "--adapter", "slack"]

