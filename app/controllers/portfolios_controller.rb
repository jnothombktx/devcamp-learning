class PortfoliosController < ApplicationController

  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Goodness , master Jim, your Portfolio item is online.' }
        # format.json { render :show, status: :created, location: @blog } #not necessary here, as used for API development
      else
        format.html { render :new }
        # format.json { render json: @blog.errors, status: :unprocessable_entity } #not necessary here, as used for API development
      end
    end
  end
  
end
