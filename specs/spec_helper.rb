ENV["RACK_ENV"] = "test"

require "rspec"
require "pry"
require "rack/test"
require "json"
require "json_spec"

RSpec.configure do |c|
  c.include Rack::Test::Methods
  c.include JsonSpec::Helpers
end
