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
| ------------ | ------------ |
| **Description:**  | Notify a slack channel with a custom message  |   
|  **Parameters:** | - **webhook:**  Enter either your Webhook value or use the CircleCI UI to add your token under the `SLACK_WEBHOOK` environment variable <br><br> - **message:** Enter your custom message to send to your Slack channel.  |

- #### Status

|  Usage | slack/status   |
| ------------ | ------------ |
| **Description:**  | Send a status alert at the end of a job based on success or failure. Must be last step in job  |   
|  **Parameters:** | -  **webhook:** Enter either your Webhook value or use the CircleCI UI to add your token under the `SLACK_WEBHOOK` environment variable|

TODO:

| Task | Status |
| ------------ | ------------ |
| Allow option of tagging users| 0% |
| Make skipping success messages on `status` optional | 0% |
