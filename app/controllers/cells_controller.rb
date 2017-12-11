class CellsController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def index
    if params[:selectedYear]
      @cells = Cell.where(["year LIKE :y", { y: params[:selectedYear] }]).limit(12)
    else
      @cells = Cell.where(["year LIKE :y", { y: Time.current.year.to_s }]).limit(12)
      #@cells = Cell.find_by "year LIKE ?", Time.current.year.to_s, limit: 12
    end
   # @cells = Cell.all
  end

  def create
    @cell = Cell.new(cell_params)
    if @cell.save
      respond_to do |format|
        format.html { redirect_to root_path }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Not created!" }
      end
    end
  end
  
  private
    def cell_params
      params.permit(:year, :month)
    end
  
end
