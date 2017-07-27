class SiteController < ApplicationController
  def index
    render html: '<img src="https://media.giphy.com/media/iThaM3NlpjH0Y/giphy.gif">'.html_safe
  end
end
