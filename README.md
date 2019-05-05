# ci_bot

### Run locally
  HUBOT_SLACK_VERIFICATION_TOKEN=XXX HUBOT_JENKINS_URL="http://<jenkins_basic_auth>@<jenkins_host>:<jenkins_port" HUBOT_SLACK_TOKEN=xoxb-xxxx ./bin/hubot --adapter slack

### Docker run
  docker run -it -p 8080:8080 --rm -e HUBOT_SLACK_VERIFICATION_TOKEN=${HUBOT_SLACK_VERIFICATION_TOKEN} -e HUBOT_JENKINS_URL=${HUBOT_JENKINS_URL} -e HUBOT_SLACK_TOKEN=${HUBOT_SLACK_TOKEN} saboteurkid/hubot-jenkins-slack


### Environment variables

- `HUBOT_SLACK_VERIFICATION_TOKEN`: Visit your app basic information page and check app credentials. https://api.slack.com/apps/<your_slack_app_id>/general? >> Verification Token
- `HUBOT_JENKINS_URL`: http://user:password@jenkins-host or http://user:token@jenkins-host (ex: http://admin:secret@localhost:8080)
- `HUBOT_SLACK_TOKEN`: Slack Bot Token. Find it in https://api.slack.com/apps/<your_slack_app_id>/oauth? >> Bot User OAuth Access Token

The following environment variables define the colors used for each build status:

- `HUBOT_JENKINS_COLOR_ABORTED`
- `HUBOT_JENKINS_COLOR_FAILURE`
- `HUBOT_JENKINS_COLOR_FIXED`
- `HUBOT_JENKINS_COLOR_STILL_FAILING`
- `HUBOT_JENKINS_COLOR_SUCCESS`
- `HUBOT_JENKINS_COLOR_DEFAULT`

## Commands

- `hubot j(enkins) build`
  - Lists Jenkins jobs to build 
- `hubot j(enkins) build <job name>`
  - Build jenkins job 

## Reference

- [https://github.com/subicura/hubot-slack-jenkins-chatops](https://github.com/subicura/hubot-slack-jenkins-chatops)
- [https://github.com/inkel/hubot-jenkins-slack](https://github.com/inkel/hubot-jenkins-slack)
- [https://github.com/github/hubot-scripts/blob/master/src/scripts/jenkins.coffee](https://github.com/github/hubot-scripts/blob/master/src/scripts/jenkins.coffee)
