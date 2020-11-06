class WebmarksController < ApplicationController
  before_action :set_webmark, only: [:show, :edit, :update, :destroy]

  def index
    @webmark = Webmark.new
    @webmarks = Webmark.all
    @cats = Cat.all
    @types = Type.all
  end
  
  def show
  end

  def create
    @webmark = Webmark.create(webmark_params)
    respond_to do |format|
      format.js { @webmark }
    end
  end

  def edit
    @cats = Cat.all
    @types = Type.all
    
  end

  def update
    @webmark.update(webmark_params)
    @cats = Cat.all
    @types = Type.all
    respond_to do |format|
      format.js { @webmark }
    end
  end

  def destroy
    @webmark.destroy  
  end

  private
  
    def set_webmark
      @webmark = Webmark.find(params[:id])
    end

    def webmark_params
      params.require(:webmark).permit(:url, :cat_id, :type_id)
    end
end
