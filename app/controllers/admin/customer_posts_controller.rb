class Admin::CustomerPostsController < ApplicationController

    def index
         @customer_posts = Post.where(customer_id: params[:customer_id])
    end

    def show
    end

    def edit
    end

    def update
    end
end
