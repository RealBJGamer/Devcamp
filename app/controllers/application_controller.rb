class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  
  before_filter :set_page_defaults
  
  def set_page_defaults
    @page_title ="DevcampTest | My Portfolio Website"
    @seo_keywords="Brandon Yates portfolio"
  end
end
