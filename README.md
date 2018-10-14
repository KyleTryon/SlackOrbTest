# Slack Orb


Easily integrate custom [Slack](https://slack.com/ "Slack") notifications into your [CircleCI](https://circleci.com/ "CircleCI") projects. Create custom alerts, job status updates, and more.

This repo is for the active testing and development for an official [orb](https://github.com/CircleCI-Public/config-preview-sdk/blob/master/docs/using-orbs.md "orb") for [CircleCI](https://circleci.com/ "CircleCI"). 

### Usage

Example config:
```yaml
orbs:
  slack: sandbox/slack@dev:<version>

jobs:
  build:
    docker: 
      - image: <docker image>
    steps:
      - slack/<command>

```
`slack@dev:<version>` from the `sandbox` namespace is imported into `slack` which can then be referenced in a step in any job you require.

### Commands
- #### Notify

|  Usage | slack/notify   |
| ------------ | ------------ | ------------ | ------------ |
| **Description:**  | Notify a slack channel with a custom message  |   
|  **Parameters:** | -  **webhook: **Enter either your Webhook value or use the CircleCI UI to add your token under the `SLACK_WEBHOOK` environment variable <br><br> - **message:** Enter your custom message to send to your Slack channel.  |

- #### Status

|  Usage | slack/status   |
| ------------ | ------------ | ------------ | ------------ |
| **Description:**  | Send a status alert at the end of a job based on success or failure  |   
|  **Parameters:** | -  **webhook: **Enter either your Webhook value or use the CircleCI UI to add your token under the `SLACK_WEBHOOK` environment variable <br><br> - **circletoken:** [Enter your CircleCI Personal API](https://circleci.com/docs/2.0/managing-api-tokens/#creating-a-personal-api-token "Enter your CircleCI Personal API") token value [through the UI in the project settings](https://circleci.com/docs/2.0/env-vars/#setting-an-environment-variable-in-a-project "through the UI in the project settings") under the environment variable `CIRCLECI_TOKEN`  |


