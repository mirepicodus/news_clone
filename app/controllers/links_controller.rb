class LinksController < ApplicationController

  before_filter :authorize, only: [:new, :edit, :update]

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to root_path, notice: "Thanks for submitting!"
    else
      render "new"
    end
  end

private
  def link_params
    params.require(:link).permit(:name, :url, :current_user)
  end

end
