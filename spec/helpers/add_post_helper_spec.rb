# frozen_string_literal: true

def add_post_helper
  visit('/posts')
  click_link 'Write a post...'
  fill_in 'Name', with: 'Sophie'
  fill_in 'Message', with: 'Hello world!'
  click_button 'Submit'
end
