class StocksController < ApplicationController
    protect_from_forgery
    def index
        @stocks = Stock.all
        #6行目はページネーションについて（.per("?")では？部分に任意の数字を入れると1ページでの表示数が指定できる）
        #.order('カラム名　ASC||DESC')は並び変え、カラム名の内容をASCなら昇順、DESCだと降順となる.
        @stocks = Stock.all.page(params[:page]).per(5).order('name ASC')
    end

    def new
      @stock = Stock.new
    end

    def create
        @stock = Stock.new(stock2_params)
        if @stock.save
            redirect_to stocks_path
        else
            render "new"
        end
    end

    def show
        @stock = Stock.find(params[:id])
    end
    
    def update
        stock = Stock.find(params[:id])
        stock.update(stock_params)
        redirect_to stocks_path
    end

    private
    def stock_params
        params.require(:stock).permit(:name, :num, :detail,:image)
        
    end

    def stock2_params
        params.permit(:name, :num, :detail,:image)
        
    end

end
