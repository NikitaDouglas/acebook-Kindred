# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Posts::LikesController, type: :controller do

  describe 'GET /' do
    it 'it does something' do
      user = User.create!(email: 'tests@example.com', password: 'f4k3p455w0rd')
      login_as(user, scope: :user)
      post = Post.create!(message: 'Hello, world!')
      like = Like.create!(user_id: user.id, post_id: post.id )
      p like
      expect(response).to have_http_status(200)
    end
  end
end