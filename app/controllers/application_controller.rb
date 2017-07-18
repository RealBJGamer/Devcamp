class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  
  before_action :set_copyright
  before_filter :set_page_defaults
  
  def set_page_defaults
    @page_title ="DevcampTest | My Portfolio Website"
    @seo_keywords="Brandon Yates portfolio"
  end
end


  def set_copyright
    @copyright = YatesViewTool::Renderer.copyright 'Brandon Yates', 'All rights reserved'
  end


module YatesViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end