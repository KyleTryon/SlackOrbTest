# 1.0.0: 10/16/2018
* First release with two functions. Send a custom message with `slack/notify` or receive status updates with `slack/status` when your jobs complete.
* Docs created

## 1.1.0: 10/16/2018
* Allow suppression of successful messages with new parameter 'fail_only' when set to 'true'.
* Updated Alert job name to no longer imply the alert has already been sent
* Reflect status in shell as well as webhook

## 1.1.0: 10/16/2018
* `Notify` message now contains job information and link, the same as for `status`.