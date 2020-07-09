# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Posts::LikesController, type: :controller do
  render_views

  describe 'GET /' do
    it 'it does something' do
      user = User.create!(email: 'tests@example.com', password: 'f4k3p455w0rd')
      login_as(user, scope: :user)
      post = Post.create!(message: 'Hello, world!')
      like = Like.create!(user_id: user.id, post_id: post.id )
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'creates a like' do
      user = User.create!(email: 'tests@example.com', password: 'f4k3p455w0rd')
      login_as(user, scope: :user)
      post = Post.create!(message: 'Hello, world!')
      # like = Like.create!(user_id: user.id, post_id: post.id )

      post 'create', params: { post_id: post.id }
      # get :index, params: { company_id: @company_1.id } –
      p user

      # expect(response).to have_http_status(200)
      p Like.find_by(post_id: post.id)
      expect(Like.find_by(post_id: post.id)).to be
    end
  end

#   describe "POST stories#create" do
#   it "should create a new story" do
#     user = create(:user)
#     login_as(user, scope: :user)
#     visit new_stories_path
#     fill_in "story_title", with: "Ruby on Rails"
#     fill_in "story_content", with: "Text about Ruby on Rails"
#     expect { click_button "Save" }.to change(Story, :count).by(1)
#   end
# end

# describe "Post posts/likes#create" do
#   it "should create a new like" do
#       user = User.create!(email: 'tests@example.com', password: 'f4k3p455w0rd')
#       login_as(user, scope: :user)
#       post = Post.create!(message: 'Hello, world!')
#       visit posts_path
#       expect(response).to have_http_status(200)
#   end
# end

end
