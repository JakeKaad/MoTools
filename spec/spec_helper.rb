ENV['RACK_ENV'] = 'test'

require('bundler/setup')
Bundler.require(:default, :test)

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do
    Internship.all().each() do |internship|
      internship.destroy()
    end

  end
end
