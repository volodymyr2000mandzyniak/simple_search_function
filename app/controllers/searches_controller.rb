class SearchesController < ApplicationController

  def new
    @search = Search.new
    @categories = Book.distinct.pluck(:category)
  end


    def create
      @search =Search.create(search_params)
      redirect_to @search
    end

    def show
      @search = Search.find(params[:id])
    end

    private

    def search_params
      params.require(:search).permit(:keyword, :category, :min_price, :max_praice, :isdn)
    end

end
