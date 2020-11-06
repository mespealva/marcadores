class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]

  def index
    @cat = Cat.new
    @cats = Cat.all
    respond_to do |format|
      format.html {  }
      format.js { @cats }
    end
  end

  def show
  end

  def create
    @cat = Cat.create(cat_params)
    respond_to do |format|
      format.js { @cat }
    end
  end

  def edit
  end

  def update
    @cat.update(cat_params)
    respond_to do |format|
      format.js { @cat }
    end
  end

  def destroy
    @cat.destroy  
  end


  private
  
    def set_cat
      @cat = Cat.find(params[:id])
    end

    def cat_params
      params.require(:cat).permit(:name, :parent_id)
    end
end

