module Xeraen::Mobile
  class BaseController < ActionController::Base
    # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
    allow_browser versions: :modern

    # layout "xeraen_mobile"

    def index
      redirect_to xeraen_path
    end
  end
end
