curl -X POST -H 'Content-type: application/json' --data "{ \"attachments\": [ { \"fallback\": \"A job has failed - \", \"text\": \"A job has succeeded!\", \"fields\": [ { \"title\": \"Project\", \"value\": \"$CIRCLE_PROJECT_REPONAME\", \"short\": true }, { \"title\": \"Job Number\", \"value\": \"$CIRCLE_BUILD_NUM\", \"short\": true } ], \"actions\": [ { \"type\": \"button\", \"text\": \"Visit Job\", \"url\": \"$CIRCLE_BUILD_URL\" } ], \"color\": \"#ed5c5c\" } ] } "