[![Gem Version](https://badge.fury.io/rb/lm-logs-sdk.svg)](http://badge.fury.io/rb/lm-logs-sdk)
# lm-logs-sdk-ruby(beta)

``` ruby
require 'ingest'
require 'json'

ingest = Ingest.new("<company_name>", "<lm_access_id>", "<lm_access_key>")

logs = [{
    "message" => "Hello! from Logic Monitor",
    "_lm.resourceId" => {
        "<lm_property>" => "<lm_property_value>"
    }
}]

result = ingest.send_logs(logs)
print result.body               # {"success":true,"message":"Accepted"}
print result.code               # 202
print result["x-request-id"]    # 202f5cc0dc121340e2c4a8908e87accf51c

```