class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end
    
    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
    end
    
    def edit
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
    end
    
    def update
        @article = Article.find(params[:article_id])
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        redirect_to @article
    end
    
    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
    
end
