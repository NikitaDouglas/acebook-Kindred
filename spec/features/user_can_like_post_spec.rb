# frozen_string_literal: true

feature 'User can like a post' do
  scenario 'user sees post' do
    visit('/')
    sign_up
    add_post_helper
    expect(page).to have_content('Hello world!')
  end

  scenario 'user can click <3' do
    visit('/')
    sign_up
    add_post_helper
    expect(page).to have_button("<3")
  end
end
