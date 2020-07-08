# frozen_string_literal: true

class Posts::LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    p @post
    @post.likes.where(user_id: current_user.id, post_id: @post.id).first_or_create
    redirect_to posts_url
  end

  def destroy
    @post = Post.find(params[:post_id])
    p @post
    @post.likes.where(user_id: current_user.id, post_id: @post.id).destroy_all
    redirect_to posts_url
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
