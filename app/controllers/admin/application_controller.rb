class Admin::ApplicationController < ApplicationController
  before_action :login_manager
end
