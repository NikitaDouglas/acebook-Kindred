# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  render_views
  # before(:each) do
  #   sign_in
  # end

  describe 'GET /new ' do
    it 'responds with 200' do
      get :index
      sign_in
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'responds with 200' do
      sign_in
      post :create, params: { post: { message: 'Hello, world!' } }
      expect(response).to redirect_to(posts_url)
    end

    it 'creates a post' do
      sign_in
      post :create, params: { post: { message: 'Hello, world!' } }
      expect(Post.find_by(message: 'Hello, world!')).to be
    end
  end

  describe 'GET /' do
    it 'responds with 302' do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET /show' do
    it 'shows a post accoirding to post_id' do
      sign_in
      post = Post.create!(message: 'Hello, world!')
      get :show, params: { id: post.id }
      expect(Post.find_by(message: 'Hello, world!')).to be
    end
  end

end
