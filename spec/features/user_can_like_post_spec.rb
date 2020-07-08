# frozen_string_literal: true

feature 'User can like a post' do
  scenario 'user sees post' do
    visit('/')
    sign_up
    p add_post_helper
    visit '/posts'
    expect(page).to have_content('My first post')
  end

  scenario 'user can click <3' do
    visit('/')
    sign_up
    add_post_helper
    visit '/posts'
    expect(page).to have_button('♥️')
  end
end
