module ArticlesHelper
    def is_my_article?
        @article.writer == session[:writer_id]
    end
end
