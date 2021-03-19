class PagesController < ApplicationController
  def home
  	@blogposts = Blog.all
  	@skillposts = Skill.all
  end

  def about
  end

  def contact
  end
end
