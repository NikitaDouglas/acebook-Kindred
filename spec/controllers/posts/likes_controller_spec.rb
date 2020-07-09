# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Posts::LikesController, type: :controller do

  # describe 'GET /' do
  #   xit 'responds with 302' do
  #     get :index
  #     expect(response).to have_http_status(302)
  #   end
  # end

  describe 'GET /' do
    it 'it does something' do
      user = User.create!(email: 'tests@example.com', password: 'f4k3p455w0rd')
      login_as(user, scope: :user)
      # post '/posts/1/like'
      post :create, params: { like: { user_id: 1, post_id: 1 } }
      expect(response).to have_http_status(302)
    end
  end


end