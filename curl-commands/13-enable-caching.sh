curl http://localhost:9180/apisix/admin/plugin_configs/1 -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PATCH -d ' 
{
   "plugins":{
      "proxy-cache":{
         "cache_key":[
            "$uri",
            "-cache-id"
         ],
         "cache_method":[
            "POST"
         ],
         "cache_http_status":[
            200
         ],
         "hide_cache_headers":true
      }
   }
}'