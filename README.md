# MQS Browser

A [STAC Browser](https://github.com/radiantearth/stac-browser) for the MQS.

## Installation and Deployment

In the same environment as the MQS, deploy the app with docker-compose:

```bash
docker-compose -f docker-compose.browser.yml up -d
```

The MQS browser should then be available at `https://{MQS_HOST}/browser`.
