## 1.2.0: 10/18/2018
* Users can now be mentioned in alerts. New parameter.
* Docs for mentions
* `Notify` message now contains job information and link, the same as for `status`.
* Internal env vars prefixed with `SLACK_` to reduce chance of collision.
* New parameter for notification. `color` may now be set as a hex string.
* Who doesn't love emoji?

## 1.1.0: 10/16/2018
* Allow suppression of successful messages with new parameter 'fail_only' when set to 'true'.
* Updated Alert job name to no longer imply the alert has already been sent
* Reflect status in shell as well as webhook

# 1.0.0: 10/16/2018
* First release with two functions. Send a custom message with `slack/notify` or receive status updates with `slack/status` when your jobs complete.
* Docs created