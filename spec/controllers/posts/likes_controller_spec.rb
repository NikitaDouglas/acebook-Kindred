# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Posts::LikesController, type: :controller do
  render_views

  describe 'GET /' do
    it 'it does something' do
      user = User.create!(email: 'tests@example.com', password: 'f4k3p455w0rd')
      sign_in
      post = Post.create!(message: 'Hello, world!')
      like = Like.create!(user_id: user.id, post_id: post.id )
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST / create' do
    it 'creates a like' do
      sign_in
      post = Post.create!(message: 'Hello, world!')
      post 'create', params: { post_id: post.id }
      expect(Like.find_by(post_id: post.id)).to be
    end
  end

  describe 'DELETE /destroy' do
    it "removes a like" do
      sign_in
      post = Post.create!(message: 'Hello, world!')
      post 'create', params: { post_id: post.id }
      delete 'destroy', params: { post_id: post.id }
      expect(Like.find_by(post_id: post.id)).not_to be
    end
  end

end
