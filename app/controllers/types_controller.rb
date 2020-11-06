class TypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]

  def index
    @types = Type.all
    @type = Type.new
    @pie_type = Webmark.joins(:type).group("name").count
  end

  def show
  end

  def edit
  end

  def update
    @type.update(type_params)
    respond_to do |format|
      format.js { @type }
    end
  end

  def destroy
    @type.destroy  
  end

  private
  
    def set_type
      @type = Type.find(params[:id])
    end

    def type_params
      params.require(:type).permit(:name)
    end
end


