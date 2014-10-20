class Admin::BaseController < ActionController::Base
  layout 'application'
  before_filter :authenticate_admin!
end