class UrlsController < ApplicationController
  def new
  	@short_url = Url.new
  end

  def create 
  	@short_url = Url.new(params[:url])
  	if @short_url.save
  		flash[:short_id] = @short_url.id
  		redirect_to new_url_path
  	else
  		render :action => "new"
  	end
  end

  def show
  	@short_url = Url.find(params[:id])
  	redirect_to @short_url.url
  end
end