class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @results = current_user.results.all
    end
  end

  def about
  end
end
