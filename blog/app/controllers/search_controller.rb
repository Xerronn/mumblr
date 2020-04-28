class SearchController < ApplicationController
    def show
        if params[:search]
            @articles = Article.search(params[:search])
        else
            @articles = blank
        end
    end
    
    def new
    end
end
