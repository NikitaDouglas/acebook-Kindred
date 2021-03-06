# frozen_string_literal: true

class Posts::LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    set_post
    @post.likes.where(user_id: current_user.id, post_id: @post.id).first_or_create
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.js
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post.likes.where(user_id: current_user.id, post_id: @post.id).destroy_all
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.js
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
