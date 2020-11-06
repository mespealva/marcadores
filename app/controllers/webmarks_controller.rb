class WebmarksController < ApplicationController
  before_action :set_webmark, only: [:show, :edit, :update, :destroy]

  def index
    @webmark = Webmark.new
    @webmarks = Webmark.all
    @cats = Cat.all
    @types = Type.all
  end
  
  def getWebmarksBytype
    current_category = Category.where(name: params[:category]).first

    json = { "bookmarks" => []}

    cat_parent = { current_category.name => []}
    json["bookmarks"].push(cat_parent)

    if current_category.bookmarks.count > 0 
      json["bookmarks"][0][current_category.name].push(current_category.bookmarks.pluck(:bookmark_url))
    end 

    current_category.children.each do |child|
      arr_bookmarks = child.bookmarks.pluck(:bookmark_url)
      json_bookmarks = {child.name => arr_bookmarks}
      json["bookmarks"][0][current_category.name].push(json_bookmarks)
    end 

    render json: json 
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
