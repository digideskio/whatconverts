$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'whatconverts'

require 'webmock/rspec'

def stub_get(path, params = {})
  stub_request(:get, Whatconverts::HttpService::API_URL + path)
    .with(
      basic_auth: ['API TOKEN', 'API SECRET'],
      query: params
    )
end

def a_get(path, params = {})
  a_request(:get, Whatconverts::HttpService::API_URL + path)
    .with(query: params)
end
