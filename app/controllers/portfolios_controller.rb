class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new 
		@portfolio_items = Portfolio.new
	end

	def create
    @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: "Your portfolio item was successfully created." }
        # format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end
  end

end

