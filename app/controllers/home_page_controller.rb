class HomePageController < ApplicationController
  def index
    @posts = Post.all
  end
end
