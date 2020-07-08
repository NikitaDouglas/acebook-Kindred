# frozen_string_literal: true

class Posts
  class LikesController < ApplicationController
    before_action :authenticate_user!

    def create
      @post.likes.where(user_id: current_user.id).first_or_create

      respond_to do |format|
        format.html { redirect_to @post }

        format.js
      end
    end

    private

    def set_post
      @post = Post.find(params[:post_id])
    end
  end
end
