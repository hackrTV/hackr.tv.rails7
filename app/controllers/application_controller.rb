class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  #allow_browser versions: :modern

  before_action :set_browser

  def index
    puts ""
    puts ""
    puts ""
    puts ""
    puts "====================================================================="

    puts ""
    puts @browser.device.mobile?
    puts ""

    puts "====================================================================="
    puts ""
    puts ""
    puts ""
    puts ""
  end

  private

  def set_browser
    @browser = Browser.new(request.env["HTTP_USER_AGENT"])
  end
end
