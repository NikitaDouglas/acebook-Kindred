# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Posts::LikesController, type: :controller do

  describe 'GET /' do
    it 'it does something' do
      user = User.create!(email: 'tests@example.com', password: 'f4k3p455w0rd')
      login_as(user, scope: :user)
      post = Post.create!(message: 'Hello, world!')
      like = Like.create!(user_id: user.id, post_id: post.id )
      expect(response).to have_http_status(200)
    end
  end

  # describe 'POST /' do
  #   it 'creates a like' do
  #     user = User.create!(email: 'tests@example.com', password: 'f4k3p455w0rd')
  #     login_as(user, scope: :user)
  #     post = Post.create!(message: 'Hello, world!')
  #     like = Like.create!(user_id: user.id, post_id: post.id )

  #     post :create, params: { user_id: user.id, post_id: post.id }
  #     # get :index, params: { company_id: @company_1.id } –

  #     # expect(response).to have_http_status(200)
  #     p Like.find_by(post_id: post.id)
  #     expect(Like.find_by(post_id: post.id)).to be
  #   end
  # end

end
