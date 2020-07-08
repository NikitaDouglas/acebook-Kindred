# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  # before(:each) do
  #   sign_up
  # end

  describe 'GET /new ' do
    it 'responds with 200' do
      # get :index
      # get :index
      visit('/users/sign_up')
      sign_up
      visit('/posts/new')
      p response.body
      p response.status
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'responds with 200' do
      user = User.create!(email: 'tests@example.com', password: 'f4k3p455w0rd')
      login_as(user, scope: :user)
      visit('/posts/new')
      p response.body
      post :create, params: { post: { message: 'Hello, world!' } }
      p response.body
      expect(response).to redirect_to(posts_url)
    end

    it 'creates a post' do
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
end
