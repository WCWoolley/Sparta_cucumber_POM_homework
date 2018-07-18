require 'capybara/dsl'
require_relative 'pages/bbc_homepage.rb'
require_relative 'pages/bbc_registration.rb'
require_relative 'pages/bbc_login.rb'
require_relative 'helpers/temp_email.rb'

class BBC_Site

  def bbc_homepage
    BBC_Homepage.new
  end

  def bbc_registration
    BBC_Registration.new
  end

  def get_temp_email
    TempEmail.new
  end

  def bbc_login
    BBCLogin.new
  end

end
