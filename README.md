# Fluent-bit with amazon elasticsearch

## Env variable

- LOG_PATH
- AWS_ES_HOST
- AWS_ES_REGION
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY

## Launch command inside container

 ```bash
td-agent-bit -c /etc/td-agent-bit//td-agent-bit.conf
```