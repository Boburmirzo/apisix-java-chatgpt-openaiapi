curl -i http://localhost:9180/apisix/admin/routes/1 -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
   "name":"Chat AI route",
   "desc":"Create a new route in APISIX for the Chat AI endpoint in Spring App",
   "methods":[
      "POST"
   ],
   "uri":"/ask-me-anything",
   "upstream_id":"1",
   "plugin_config_id":1
}'