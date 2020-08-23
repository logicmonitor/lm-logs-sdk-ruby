require 'date'
require 'time'
require 'uri'
require 'json'
require 'openssl'
require "base64"
require 'net/http'
require 'net/https'

 class Ingest
    def initialize(company_name, access_id, access_key)
        @company_name = company_name
        @access_id = access_id
        @access_key = access_key
     end

     def generate_token(events)
        timestamp = DateTime.now.strftime('%Q')
        signature = Base64.strict_encode64(
            OpenSSL::HMAC.hexdigest(
                OpenSSL::Digest.new('sha256'),
                @access_key,
                "POST#{timestamp}#{events.to_json}/log/ingest"
            )
        )
        "LMv1 #{@access_id}:#{signature}:#{timestamp}"
      end

      def send_logs(events)
        url = "https://#{@company_name}.logicmonitor.com/rest/log/ingest"
        body = events.to_json
        uri = URI.parse(url)
  
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
  
        request = Net::HTTP::Post.new(uri.request_uri)
        request['authorization'] = generate_token(events)
        request['Content-type'] = "application/json"  
        request.body = body
  
        resp = http.request(request)
      end
 end