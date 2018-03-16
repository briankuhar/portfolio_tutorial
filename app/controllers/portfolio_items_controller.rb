class PortfolioItemsController < ApplicationController
  def index
    @portfolio_items = PortfolioItem.all
  end
  
  def angular
    @angular_items = PortfolioItem.angular
  end
  
  def new
    @portfolio_item = PortfolioItem.new
    3.times { @portfolio_item.technologies.build }
  end
  
  def create
    @portfolio_item = PortfolioItem.new(portfolio_item_params)
    
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolio_items_path, notice: "Your portfolio item is now live." }
      else
        format.html { render :new }
      end
    end
  end
  
  def edit
    @portfolio_item = PortfolioItem.find(params[:id])
  end
  
  def update
    @portfolio_item = PortfolioItem.find(params[:id])
    
    respond_to do |format|
      if @portfolio_item.update(portfolio_item_params)
        format.html { redirect_to portfolio_items_path, notice: "Portfolio item successfully updated" }
      else
        format.html { render :edit }
      end
    end
  end
  
  def show
    @portfolio_item = PortfolioItem.find(params[:id])
  end
  
  def destroy
    @portfolio_item = PortfolioItem.find(params[:id])
    
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_items_path, notice: "Portfolio item successfully deleted" }
    end
  end
  
  
  private
  
    def portfolio_item_params
      params.require(:portfolio_item).permit(:title,:subtitle,:body,:main_image,:thumb_image, technologies_attributes: [:name])
    end
end
