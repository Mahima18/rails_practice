class PagesController < ApplicationController
  def home
  	@blogposts = Blog.all
  end

  def about
  end

  def contact
  end
end
