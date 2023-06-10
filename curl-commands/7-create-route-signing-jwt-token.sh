curl http://127.0.0.1:9180/apisix/admin/routes/login -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
    "uri": "/login",
    "plugins": {
        "public-api": {
            "uri": "/apisix/plugin/jwt/sign"
        }
    }
}'