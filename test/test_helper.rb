ENV['RAILS_ENV'] = 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'coveralls'

Coveralls.wear!('rails')
require 'wrong'
require 'rails/test_help'
require 'minitest/rails'

class ActiveSupport::TestCase
  include Wrong
  include AuthHelper
  include FactoryGirl::Syntax::Methods
end
