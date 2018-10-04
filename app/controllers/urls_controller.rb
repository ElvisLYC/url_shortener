class UrlsController < ApplicationController
  def index
    @urls = Url.all
    @new_url = Url.last
  end

  def new
    @urls = Url.new
    # @new_url = Url.last
  end

  def show
    @url = Url.find(params[:id])
  end

  def create
    @url = Url.new(valid_params)
    if @url.save
      redirect_to urls_path
    else
      render 'new'
      @errors = @url.errors.full_messages
    end
  end
end

private
def valid_params
   params.require(:url).permit(:long_url, :short_url)
 end
